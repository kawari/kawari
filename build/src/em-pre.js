var instantiate = function(onRuntimeInitialized){
  var Module = {};
  Module["onRuntimeInitialized"] = function() {
    var info = {
      Module: Module,
      FS: FS,
      PATH: PATH,
      ERRNO_CODES: ERRNO_CODES,
      NODEFS: NODEFS,
      IDBFS: IDBFS,
      WORKERFS: WORKERFS,
    };
    if (onRuntimeInitialized) onRuntimeInitialized(info);
  };

  Module["locateFile"] = function(file) {
    if (typeof __dirname === "string") {
      return __dirname + "/" + file;
    } else {
      return file;
    }
  };
