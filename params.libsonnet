// this file returns the params for the current qbec environment
// you need to add an entry here every time you add a new environment.

local env = std.extVar('qbec.io/env');
local paramsMap = {
  _: {
    components: {
      hello: {
        indexData: 'hello baseline\n',
        replicas: 1,
      },
    },
  },
};

if std.objectHas(paramsMap, env) then paramsMap[env] else error 'environment ' + env + ' not defined in ' + std.thisFile
