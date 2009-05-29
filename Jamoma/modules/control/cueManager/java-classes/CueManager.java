import com.cycling74.max.*;
import java.util.ArrayList;
import java.lang.String;
import java.io.File;
import java.io.FilePermission;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.IOException;

public class CueManager extends MaxObject
{
	public static final int DIFFERENTIAL = 0;
	public static final int ABSOLUTE = 1;
	public static final int _CTL = 0;
	public static final int _WAIT = 1;
	public static final int _CMT = 2;
	public static final int _CFG = 3;
	public static final String NL = "cr";
	public static final String TAB = "tab";
	public static final String CONFIG = "/CONFIG";
	public static final String SEPARATION = "##############################";
	
	/// Déclarations
	private File cuelistfile; // the cuelist file on the disk
	private CueList cuelist; // the current cuelist (note : the index start at 1 for the user)
	private Cue get_state; // the actual state of each modules
	private String store_name; // the name of the cue to store
	private int store_index; // the index of the cue to store (note: this is not a user index)
	private String currentCueName; // le nom de la dernière cue mise à jour

	
	/// Constructeurs
	public CueManager()
	{
		declareInlets(new int[]{DataTypes.ALL});
		declareOutlets(new int[]{DataTypes.ALL, DataTypes.ALL, DataTypes.ALL});
		createInfoOutlet(true);
		
		cuelist = new CueList();
	}
	
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
//	METHODES DE RECEPTION DES MESSAGES
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
	
	// message to import a cuelist file line by line
	////////////////////////////////////////////////////
	public void load(Atom[] args){
		String line = "";

		// make the line string
		for(int i=0; i<args.length; i++){
			if(args[i].isString()) line = line + " " +args[i].getString();
			if(args[i].isInt()) line = line + " " +args[i].getInt();
			if(args[i].isFloat()) line = line + " " +args[i].getFloat();
		}
		fileAnalysis(line);
	}
	
/*	public void read(Atom[] args){
		
		String file_path = "";
		FilePermission fp;
		
		if(args.length == 1){
			if(args[0].isString()) file_path = args[0].getString();
		}
		else return;
		
		try{
			if(file_path.endsWith(".txt")) {
				this.cuelistfile = new File(file_path);
			}
			else {
				this.cuelistfile = new File(file_path+".txt");
			}
		}
		catch(java.lang.NullPointerException e){
			return;
		}
		
		fp = new FilePermission(this.cuelistfile.getAbsolutePath(),"read");
		
		if(!cuelistfile.exists()) return;	
		
		
	}*/
	
	// message to get the state of each modules
	//////////////////////////////////////////////
	public void get_state(Atom[] args){
		
		String line = "";
		
		// clear the get_state Cue
		if((args.length == 2)){
			if(args[0].isString()&&args[1].isInt()){
				if(args[0].getString().equals("clear")){
					this.get_state = new Cue("get_state",args[1].getInt());
					return;
				}
			}
		}
		// make the line string
		for(int i=0; i<args.length; i++){
			if(args[i].isString()) line = line + " " +args[i].getString();
			if(args[i].isInt()) line = line + " " +args[i].getInt();
			if(args[i].isFloat()) line = line + " " +args[i].getFloat();
		}
		getStateAnalysis(line);
	}
	
	// message tell where to store a next incomming "store" message
	// 			<storeAs t x foo>	insert "foo" at x position, and offset the former x, x+1 ,... cues
	//////////////////////////////////////////////////////////////////////////////////////////////////
	public void storeAs(Atom[] args){

		if(args.length == 3){
			if(args[0].isInt() && args[1].isInt() && args[2].isString()){
				try{
					this.cuelist.insert(new Cue(args[2].getString(), args[0].getInt()), args[1].getInt()-1);
					store_index = args[1].getInt()-1; // index start at 1 for the user
					store_name = args[2].getString();
				}
				catch(NullPointerException e){
				}
			}
		}
		this.currentCueName = store_name;
	}
	
	// message to store in the cue list
	/////////////////////////////////////////////////////////
	public void store(Atom args[]){
		String line = "";
		
		// make the line string
		for(int i=0; i<args.length; i++){
			if(args[i].isString()) line = line + " " +args[i].getString();
			if(args[i].isInt()) line = line + " " +args[i].getInt();
			if(args[i].isFloat()) line = line + " " +args[i].getFloat();
		}
		storeAnalysis(line);
	}
	
	// message to save the cue list in a chosen file
	///////////////////////////////////////////////////
	public void saveAs()
	{
		String file_path;
		
		file_path = MaxSystem.saveAsDialog("Save as","cuelist.txt");
		
		try{
			if(file_path.endsWith(".txt")) {
				this.cuelistfile = new File(file_path);
			}
			else {
				this.cuelistfile = new File(file_path+".txt");
			}
		}
		catch(java.lang.NullPointerException e){
			return;
		}
			
		saveAgain();
	}
	
	public void saveAgain()
	{
		FileWriter fwo;
		BufferedWriter bwo;
		FilePermission fp;
		Cue actualCue;
		String line;
		
		try{
			fp = new FilePermission(this.cuelistfile.getParent(),"write");
		
			if(!cuelistfile.exists()){
				try{
					this.cuelistfile.createNewFile();
				}
				catch(java.io.IOException e){
					post("java error : " + e.getMessage());
					return;
				}
			}
		}
		catch(java.lang.NullPointerException n){saveAs();}

		try
		{
			fwo = new FileWriter(cuelistfile.getAbsolutePath(), false); // false means we will be writing to the file
			bwo = new BufferedWriter(fwo);

			// ECRITURE
			bwo.newLine( );
			for(int cue=0; cue<cuelist.size(); cue++){

				actualCue = cuelist.get(cue);

				// ENTETE CUE
				bwo.newLine( );
				if(cuelist.get(cue).getType() == 1)
					bwo.write("KEY CUE "+cuelist.get(cue).getName());
				else
					bwo.write("CUE "+cuelist.get(cue).getName());

				bwo.newLine();

				// COMMANDE
				for(int d=0; d<actualCue.size(); d++){

					line = supprSpaceBefore(actualCue.get(d).getString());

					if(actualCue.get(d).isCmt()){
						bwo.newLine();
						bwo.write(line);
						bwo.newLine();
						bwo.newLine();
					}

					if(actualCue.get(d).isCtl() || actualCue.get(d).isWait() || actualCue.get(d).isCfg()){
						bwo.write("	"+line);
						bwo.newLine();		
					}
				}
			}

			// release resources associated with output.txt
			bwo.close();
			post("file saved in : "+this.cuelistfile.getAbsolutePath());
		}
		catch(java.io.FileNotFoundException f){saveAs();}
		catch(java.lang.NullPointerException e){saveAs();}
		catch(IOException ioexception){ioexception.printStackTrace( );}
	}
	
	// message to edit all or a part of the cuelist.
	// option : <edit> or <dump all>
	//			<edit get_state>
	//			<edit aCue(int or string)>
	////////////////////////////////////////////////////////////////
	public void edit(Atom[] args)
	{
		Cue c = null;
		
		// no args
		if(args.length == 0){
			editAll();
			return;
		}
		else{
			// 1 arg
			if(args.length == 1){
				// if it's a String
				if(args[0].isString()){
					if(args[0].getString().equals("ALL-CUES")){
						editAll();
						return;
					}
					if(args[0].getString().equals("get_state")){
						try{get_state.getName();}
						catch(NullPointerException e){return;}
						editCue(get_state);
						return;
					}
				}
				// if it's a String or an int
				try{c = selectCue(args[0]);}
				catch(NullPointerException e)
				{
					post("this cue doesn't exist");
					return;
				}
				// edit out
				try{editCue(c);}
				catch(NullPointerException e)
				{post("this cue doesn't exist");}
			}
		}
	}
	
	// message to dump a cue or a part a cue.
	// option : <dump get_state>
	//			<dump aCue(int or string)>
	///////////////////////////////////////////////////////////////////
	public void dump(Atom[] args)
	{
		Cue c = null;

		// 1 arg
		if(args.length == 1){
			// if it's a String and "get_state"
			if(args[0].isString()){
				if(args[0].getString().equals("get_state")){
					dumpCue(this.get_state);
					return;
				}
			}
			// if it's a String or an int
			try{c = selectCue(args[0]);}
			catch(NullPointerException e)
			{
				post("this cue doesn't exist");
				return;
			}
			// dump out
			try{
				dumpCue(c);
				//infoCue();
				}
			catch(NullPointerException e)
			{post("this cue doesn't exist");}
		}
	}
	
	
	// message to remove a cue : <remove aCue(int or string)>
	////////////////////////////////////////////////////////////
	public void remove(Atom[] args)
	{
		String name;
		Atom[] clear_all;
		int index = 0;
		
		if(args[0].isInt()){
			if(cuelist.size() == 1){	// clear all
				clear_all = new Atom[1];
				clear_all[0] = Atom.newAtom("ALL-CUES");
				clear(clear_all);
				return;
			}
			else{
				index = args[0].getInt()-1; // index start at 1 for the user
				try{
					this.cuelist.delete(index);
				}
				catch(NullPointerException e){
					post("this cue doesn't exist");
					return;
				}
			}
		}
		
		if(args[0].isString()){
			name = args[0].getString();
			try{index = this.cuelist.getIndex(name);}
			catch(NullPointerException e){
				post("this cue doesn't exist");
				return;
			}
			this.cuelist.delete(name);
		}
		
		// info out
		if(cuelist.size() > 0){
			try{name = this.cuelist.get(index).getName();} // if there a next cue
			catch(NullPointerException e){name = this.cuelist.get(index-1).getName();}
			this.currentCueName = name;
		}
	}
	
	// message to rename a cue : <create aCue(int or String) aName(string)>
	///////////////////////////////////////////////////////////////////////:
	public void rename(Atom[] args)
	{
		if(args.length == 2){
			if(args[1].isString()){
				try{
					selectCue(args[1]);
					post("the cue "+args[1].getString()+" already exist");
					}
				catch(NullPointerException e){
					try{selectCue(args[0]).setName(args[1].getString());}
					catch(NullPointerException f){post("this cue doesn't exist");}
				}
			}else post("a symbol is expecting for the second argument");
		}else post("two arguments are expecting");
	}
	
	// message to clear the cue list : 
	///////////////////////////////////////////////////
	public void clear(Atom[] args){
		
		Atom[] cl_out = new Atom[2];
		Atom[] cc_i_out = new Atom[2];
		Atom[] cc_n_out = new Atom[2];
		Atom[] cc_t_out = new Atom[2];
		Atom[] gt_m_out = new Atom[2];

		this.cuelist.clear();
		this.cuelistfile = null;
		this.currentCueName = "";
		this.get_state = null;
		this.store_index = 0;
		this.store_name = "";

		cl_out[0] = Atom.newAtom("/listCue");
		cc_i_out[0] = Atom.newAtom("/currentCueId");
		cc_n_out[0] = Atom.newAtom("/currentCueName");
		cc_t_out[0] = Atom.newAtom("/currentCueMode");
		gt_m_out[0] = Atom.newAtom("/getStateMode");

		cl_out[1] = Atom.newAtom("NO-CUE");
		cc_i_out[1] = Atom.newAtom(0);
		cc_n_out[1] = Atom.newAtom("Init");
		cc_t_out[1] = Atom.newAtom(1);
		gt_m_out[1] = Atom.newAtom(1);

		infoOut(cl_out);
		infoOut(cc_i_out);
		infoOut(cc_n_out);
		infoOut(cc_t_out);
		infoOut(gt_m_out);
	}
	
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
//	METHODES PRIVATE : MOTEUR ET FONCTIONS ANNEXES
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
	
	private Cue selectCue(Atom arg)
	{
		int index;
		String name;
		Cue c = null;
		
		// the user give the index of the cue (Start at 1)
		if(arg.isInt()){
			index = arg.getInt()-1;
			try{c = this.cuelist.get(index);}
			catch(NullPointerException e){}	
		}
		
		// the user give the name of the cue
		else 
			if(arg.isString()){
				name = arg.getString();
				try{c = this.cuelist.get(name);}
				catch(NullPointerException e){}
				c.getName();
			}
		return c;
	}
	
	// to analyse a string from a texte file
	///////////////////////////////////////////
	private void fileAnalysis(String l)
	{
		String line, file_path;
		
		if(l.length()>0){
			line = supprSpaceBefore(l);
			
			// "CUE" search
			if(line.startsWith("KEY CUE")){
				// else add the cue to the cuelist
				cuelist.add(new Cue(line.substring(8), ABSOLUTE));
				this.currentCueName = line.substring(8);
				return;
			}
			if(line.startsWith("CUE")){
				// else add the cue to the cuelist
				cuelist.add(new Cue(line.substring(4), DIFFERENTIAL));
				this.currentCueName = line.substring(4);
				return;
			}
			// FILEPATH search
			if(line.startsWith("FILEPATH")){
				file_path = line.substring(9);
				try{
					if(file_path.endsWith(".txt")){
						this.cuelistfile = new File(file_path);
					}
					else{
						this.cuelistfile = new File(file_path+".txt");
					}
				}
				catch(java.lang.NullPointerException e){
					return;
				}
				post("file loaded : "+this.cuelistfile.getAbsolutePath());
				return;
			}
			else{
				if(cuelist.size() > 0){
					// CONFIG search
					if(line.startsWith(CONFIG)){
						// add the command to the last cue
						cuelist.getLast().addData(line, _CFG);
						return;
					}
					// COMMAND search
					if(line.startsWith("/")){

						// add the command to the last cue
						cuelist.getLast().addData(line, _CTL);
						return;
					}
					if(line.startsWith("WAIT")){
						// add a wait to the last cue
						cuelist.getLast().addData(line, _WAIT);
						return;
					}
					if(line.startsWith("cr")){
						// no newline add to the cue
						return;
					}
					if(line.startsWith("tab")){
						// no tab add to the cue
						return;
					}
					cuelist.getLast().addData(l, _CMT);
				}
			}
		}
	}
	
	// to analyse a string from a get_state
	///////////////////////////////////////////
	private void getStateAnalysis(String l)
	{
		String line;

		if(l.length()>0){
			line = supprSpaceBefore(l);

			if(line.startsWith("/")){
				// add the command to the get_state cue
				this.get_state.addData(line, _CTL);
				return;
			}
			if(line.startsWith("WAIT")){
				// add a wait to the get_state cue
				this.get_state.addData(line, _WAIT);
				return;
			}
			if(line.startsWith("cr")){
				// no newline add to the get_state cue
				return;
			}
			if(line.startsWith("tab")){
				// no tab add to the get_state cue
				return;
			}
			this.get_state.addData(l, _CMT);
		}
	}
	
	// to analyse a string from a get_state
	///////////////////////////////////////////
	private void storeAnalysis(String l)
	{
		String line;

		if(l.length()>0){
			line = supprSpaceBefore(l);
			
			// "CUE" search
			if(line.startsWith("KEY CUE")){
				return;
			}
			if(line.startsWith("CUE")){
				return;
			}
			if(line.startsWith(CONFIG)){
				// add the command to the get_state cue
				this.cuelist.get(store_index).addData(line, _CFG);
				return;
			}
			if(line.startsWith("/")){
				// add the command to the get_state cue
				this.cuelist.get(store_index).addData(line, _CTL);
				return;
			}
			if(line.startsWith("WAIT")){
				// add a wait to the get_state cue
				this.cuelist.get(store_index).addData(line, _WAIT);
				return;
			}
			if(line.startsWith("cr")){
				// no newline add to the get_state cue
				return;
			}
			if(line.startsWith("tab")){
				// no tab add to the get_state cue
				return;
			}
			this.cuelist.get(store_index).addData(l, _CMT);
		}
	}
	
	private String supprSpaceBefore(String line)
	{
		int i=0;
		boolean space = (line.charAt(0) == ' ')||(line.charAt(0) == '	');
		
		while(space){
			i++;
			if(i<line.length()) space = (line.charAt(i) == ' ')||(line.charAt(i) == '	');
			else space = false;
		}
		return line.substring(i);
	}
	
	// to send on the Edit outlet
	/////////////////////////////////////
	private void editAll(){
		Cue c;
		if(cuelist.size() > 0){
			for(int i=0; i<cuelist.size(); i++){
				c = cuelist.get(i);
				editCue(c);
			}
			this.currentCueName = cuelist.get(0).getName();
		}
	}
	
	private void editCue(Cue c){

		if(!c.getName().equals("get_state")){
			this.currentCueName = c.getName();
		}
		editOut(Atom.newAtom(NL));
		if(c.getType() == 1){
			editOut(Atom.newAtom("KEY CUE "+c.getName()));
			editOut(Atom.newAtom(NL));
		}
		else{
			editOut(Atom.newAtom("CUE "+c.getName()));
			editOut(Atom.newAtom(NL));
		}
		
		for(int i=0; i<c.size(); i++){
			if(!c.get(i).isCmt()){
				editOut(Atom.newAtom(TAB));
				editOut(Atom.newAtom(TAB));
				editOut(Atom.newAtom(TAB));
				editOut(Atom.newAtom(TAB));
				editOut(Atom.newAtom(c.get(i).getString()));
				editOut(Atom.newAtom(NL));
			}
			else{
				editOut(Atom.newAtom(NL));
				editOut(Atom.newAtom(c.get(i).getString()));
				editOut(Atom.newAtom(NL));
				editOut(Atom.newAtom(NL));
			}
		}
	}

	// to send on the Dump outlet
	/////////////////////////////////////
	private void dumpCue(Cue c){

		Data data;
		Atom cmd_out;
		
		this.currentCueName = c.getName();
		
		for(int i=0; i<c.size(); i++){
			// ne pas envoyer les comments
			data = c.get(i);
			if(!data.isCmt()){
				if(data.isCfg()){
					cmd_out = Atom.newAtom(data.getString().substring(8));
					configOut(cmd_out);
				}
				else{
					cmd_out = Atom.newAtom(data.getString());
					dumpOut(cmd_out);
				}
			}
		}
	}

	public void info(Atom[] args){
		
		Atom[] cl_out;
		Atom[] cc_i_out;
		Atom[] cc_n_out;
		Atom[] cc_t_out;
		int cc_i = 0;
		String cc_n = "";
		int cc_t = 1;

		if(cuelist.size()>0){
			
			// out cues name list
			cl_out = new Atom[cuelist.size()+1];
			cl_out[0] = Atom.newAtom("/listCue");

			for(int i=1; i<cuelist.size()+1; i++){	
				cl_out[i] = Atom.newAtom(cuelist.get(i-1).getName());
			}
				
			if(args.length == 0 || args[0].getString().equals("listCue"))
				infoOut(cl_out);

			// out current cue info
			cc_i = this.cuelist.getIndex(currentCueName);
			if(cc_i != -1){

				cc_n = currentCueName;
				cc_t = this.cuelist.get(cc_i).getType();

				cc_i_out = new Atom[2];
				cc_n_out = new Atom[2];
				cc_t_out = new Atom[2];

				cc_i_out[0] = Atom.newAtom("/currentCueId");
				cc_n_out[0] = Atom.newAtom("/currentCueName");
				cc_t_out[0] = Atom.newAtom("/currentCueMode");

				cc_i_out[1] = Atom.newAtom(cc_i + 1); // start at 1 for the user
				cc_n_out[1] = Atom.newAtom(cc_n);
				cc_t_out[1] = Atom.newAtom(cc_t);
				

				if(args.length == 0 || args[0].getString().equals("currentCueId")|| args[0].getString().equals("currentCue"))
					infoOut(cc_i_out);
				if(args.length == 0 || args[0].getString().equals("currentCueName")|| args[0].getString().equals("currentCue"))
					infoOut(cc_n_out);
				if(args.length == 0 || args[0].getString().equals("currentCueMode")|| args[0].getString().equals("currentCue"))
					infoOut(cc_t_out);
			}
		}
	}

	private void dumpOut(Atom atom_send){
		outlet(0,atom_send);
	}
	
	private void configOut(Atom atom_send){
		outlet(2,atom_send);
	}
	
	private void editOut(Atom atom_send){
		outlet(1,atom_send);
	}
	
	private void infoOut(Atom[] atom_send){
		int info_idx = getInfoIdx();
		outlet(info_idx,atom_send);
	}
}

//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
//	 PRIVATE CLASSES
//////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////

final class CueList {

	private ArrayList liste;

	public CueList(){
		liste = new ArrayList();
	}

	public void add(Cue c){
		this.liste.add(c);
	}
	
	public void insert(Cue c, int pos){
		this.liste.add(pos, c);
	}

	public Cue get(int i){
		Cue c = null;
		if(i>=0 && i<this.liste.size()){
			c = (Cue)this.liste.get(i);
		}
		return c;
	}
	
	public Cue get(String name){
		int i = this.getIndex(name);
		Cue c = null;
		if(i >= 0){
			c = (Cue)this.liste.get(i);
		}
		return c;
	}
	
	public Cue getNext(int i){
		if(this.liste.size() == 0)return null;
		if(i+1 == this.liste.size()) return (Cue)this.liste.get(i);
		return (Cue)this.liste.get(i+1);
	}
	
	public Cue getNext(String n){
		if(this.liste.size() == 0)return null;
		int i = this.getIndex(n);
		if(i+1 == this.liste.size()) return (Cue)this.liste.get(i);
		return (Cue)this.liste.get(i+1);
	}
	
	public Cue getLast(){
		return (Cue)this.liste.get(this.liste.size()-1);
	}

	public void clear(){
		for(int i=0; i<this.liste.size(); i++){
			((Cue)this.liste.get(i)).clear();
		}
		this.liste.clear();
	}
	
	public void delete(int i){
		if(i>=0 && i<this.liste.size()){
			((Cue)this.liste.get(i)).clear();
			this.liste.remove(i);
		}
	}
	
	public void delete(String name){
		int i = this.getIndex(name);
		if(i >= 0 && i<this.liste.size()){
			((Cue)this.liste.get(i)).clear();
			this.liste.remove(i);
		}
	}

	public int size(){
		return this.liste.size();
	}
	
	public int getIndex(String name){
		boolean exist = false;
		int index = -1;
		int i = 0;
		
		while(!exist && i<this.liste.size()){
			exist = ((Cue)this.liste.get(i)).getName().equals(name);
			if(exist) index = i;
			i++;
		}
		return index;
	}
}

final class Cue {
	
	private String name; // name of the cue
	private int type; // absolute or differential
	private ArrayList liste; // list of data
	
	public Cue(String name, int type){
		this.name = name;
		this.type = type;
		liste = new ArrayList();
	}

	public void addData(String data, int type){
		this.liste.add(new Data(data, type));
	}
	
	public Data get(int i){
		return (Data) this.liste.get(i);
	}
	
//	public Data getNext(int i){
//		if(this.liste.size() == 0)return null;
//		if(i+1 == this.liste.size()) return (Data)this.liste.get(i);
//		return (Data)this.liste.get(i+1);
//	}
//	
//	public Data getNext(String n){
//		if(this.liste.size() == 0)return null;
//		int i = this.getIndex(n);
//		if(i+1 == this.liste.size()) return (Data)this.liste.get(i);
//		return (Data)this.liste.get(i+1);
//	}

	public String getName(){
		return this.name;
	}
	
	public int getType(){
		return this.type;
	}

	public void setName(String name){
		this.name = name;
	}
	
	public void clear(){
		for(int i=0; i<this.liste.size(); i++){
			this.liste.remove(i);
		}
		this.liste.clear();
	}

	public int size(){
		return this.liste.size();
	}
}

final class Data {
	private String data;
	private int type;
	
	public Data(String d, int t){
		this.data = d;
		this.type = t;
	}
	
	public String getString(){
		return this.data;
	}
	
	public boolean isCtl(){
		return this.type == CueManager._CTL;
	}
	
	public boolean isWait(){
		return this.type == CueManager._WAIT;
	}
	
	public boolean isCmt(){
		return this.type == CueManager._CMT;
	}
	
	public boolean isCfg(){
		return this.type == CueManager._CFG;
	}
}


























