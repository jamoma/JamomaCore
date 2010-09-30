outlets = 1;

function bang()
{
    var modelName = this.patcher.getattr("jmod/modelname");

    outlet(0, modelName);
}

