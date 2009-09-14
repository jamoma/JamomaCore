

// prototypes

// getting tags, attributes and data from XML file

short get_data(t_filehandle file, char* data);
short get_tag(t_filehandle file, char *tag, char *rem);
short get_attr_value_pair(char *buf, char *attr, char *value, char *rem);


// utility functions

short file_getchar(t_filehandle file, char *c);
short string_to_number(char *string);
void string_to_triplet(char *string, double *coord_triplet);
void remove_space_from_string(char *str);
short white_space(char c);

#define BUF_SIZE 64

////////////////////////////////////////////////////////////


// ---------------------------------------------------------
// getting tags, attributes and data from XML file

short get_data(t_filehandle file, char* data)
{
	short err=0, i=0;
	
	do {
		if(file_getchar(file, &data[i++])) return(1);
	} while(data[i-1] != '<');
	
	data[i-1] = '\0';
	
	return(err);
}

short get_tag(t_filehandle file, char *tag, char *rem)
{
	char buf;
	short i=0;
	
	do {
		if(file_getchar(file, &buf)) return(1);
	} while(buf != '<');
	
	if(file_getchar(file, &buf)) return(1);
	if(buf == '?')
	{
		tag[i++] = buf;
		do {
			if(file_getchar(file, &tag[i++])) return(1);
			if(i > BUF_SIZE) return(0);
		} while (tag[i-1] != '>');
		
		tag[i-1] = '\0';
		rem[0] = '\0';
		return(0);
	}
	
	if(buf == '!')
	{
		tag[i++] = buf;
		do {
			if(file_getchar(file, &tag[i++])) return(1);
			if(i > BUF_SIZE) return(0);
		} while (tag[i-1] != '>');
		
		tag[i-1] = '\0';
		rem[0] = '\0';
		return(0);
	}
	
	if(white_space(buf))
	{
		do {
			if(file_getchar(file, &buf)) return(1);
		} while(white_space(buf));
	}

	tag[i++] = buf;
	
	do {
		if(file_getchar(file, &tag[i++])) return(1);
		if(i > BUF_SIZE) return(0);
	} while (! white_space(tag[i-1]) && tag[i-1] != '>');
	
	if(tag[i-1] == '>')
	{
		tag[i-1] = '\0'; rem[0] = '\0';
		return(0);
	}
	
	tag[i-1] = '\0';
	
	do {
		if(file_getchar(file, &buf)) return(1);
	} while(white_space(buf));
	
	i=0;
	rem[i++] = buf;
	
	do {
		if(file_getchar(file, &rem[i++])) return(1);
		if(i > BUF_SIZE) return(0);
	} while (rem[i-1] != '>');
	
	rem[i-1] = '\0';
	return(0);
}

short get_attr_value_pair(char *buf, char *attr, char *value, char *rem)
{
	short i=0, j=0;
	
	while(white_space(buf[i])) i++;
	
	if(buf[i] == '\0')
	{
		attr[0] = '\0';
		value[0] = '\0';
		rem[0] = '\0';
		return(0);
	}
						
	while(! white_space(buf[i]) && buf[i] != '=' && buf[i] != '\0')
		attr[j++] = buf[i++];
	
	attr[j] = '\0';

	if(buf[i] == '\0') return(1);
							
	while(white_space(buf[i])) i++;
		
	if(buf[i] == '\0') return(1);
	if(buf[i++] != '=') return(1);
					
	while(white_space(buf[i])) i++;
		
	if(buf[i] == '\0') return(1);
	if(buf[i++] != '\"') return(1);
												
	while(white_space(buf[i])) i++;
		
	if(buf[i] == '\0') return(1);

	j=0;
	while(! white_space(buf[i]) &&buf[i] != '\"' && buf[i] != '\0')
		value[j++] = buf[i++];
		
	value[j] = '\0';

	while(white_space(buf[i]) || buf[i] == '\"') i++;
	
	if(buf[i] == '\0')
	{
		rem[0] = '\0';
		return(0);
	}
	
	j=0;
	while(buf[i] != '\0')
		rem[j++] = buf[i++];
		rem[j] = '\0';
	return(0);
}

// ---------------------------------------------------------
// utility functions

short file_getchar(t_filehandle file, char *c)
{
	long count = 1;
	short err;
#ifdef WIN_VERSION
	long pos, eof;
#endif
	
	err = sysfile_read(file, &count, c);
	
#ifdef WIN_VERSION
	sysfile_getpos(file, &pos);
	sysfile_geteof(file, &eof);
	if(pos == eof) err = 1;
#endif

	return err;
}

short string_to_number(char *string)
{
	short i, j, number = 0;
	
	for(i=strlen(string), j=1;i>0;i--, j=j*10)
	{	
		number = number + (string[i-1] - 48) * j;
	}
	
	return(number);	
}


void string_to_triplet(char *string, double *coord_triplet)
// used for reading coordinate data triplets
{
	short i=0, j;
	double k;
	short sign;
	double value;

	for(j=0;j<3;j++)
	{
		value = 0; sign = 1; k = 0.1;
		while(white_space(string[i])) i++;
		
		if(string[i] == '-') {sign = -1;i++;}
	
		// string to float
		while(string[i] > 47 && string[i] < 58)
		{
			value = value * 10 + string[i++] - 48;
		}
	
		if(string[i] == '.')
		{
			i++;
			while(string[i] > 47 && string[i] < 58)
			{
				value = value + (string[i++] - 48) * k;
				k = k * 0.1;
			}
		}
		coord_triplet[j] = value * sign;
	}
}

void remove_space_from_string(char *str)
{
	short i=0, j=0;
	
	do {
		str[j] = str[i];
		if(! white_space(str[i])) j++;
	} while(str[i++] != '\0');
}

short white_space(char c)
{
	if(	c == 0x20 ||	// space
	 	c == 0x9  ||	// TAB
	 	c == 0xA  ||	// line feed
	 	c == 0xB  ||	// vertical tab
	 	c == 0xC  ||	// form feed
	 	c == 0xD )		// carriage return
		return(1);
	else return(0);
}