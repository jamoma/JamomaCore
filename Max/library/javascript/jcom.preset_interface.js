outlets = 2;


function bang()
{
var OSCName = this.patcher.getattr("jmod/modulename");
var presetnr = this.patcher.getattr("jmod/presetnumber");
    outlet(0, OSCName);
    outlet(1, presetnr);
}

