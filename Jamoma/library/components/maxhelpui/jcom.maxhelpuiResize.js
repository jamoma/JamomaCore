function resize()
{   var x = (this.box.patcher.wind.location[2])-this.box.patcher.wind.location[0];
    this.patcher.box.rect = [0,0,x,70];
    outlet(0, x);
}
