___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Array Builder",
  "description": "Provides an interface for building arrays.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "CHECKBOX",
    "name": "inside_array",
    "checkboxText": "Put created array inside array",
    "simpleValueType": true,
    "help": "If checked, the built array will be put inside the array."
  },
  {
    "type": "LABEL",
    "name": "start",
    "displayName": "["
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "array_data",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Value",
        "name": "value",
        "type": "TEXT"
      }
    ]
  },
  {
    "type": "LABEL",
    "name": "end",
    "displayName": "]"
  }
]


___SANDBOXED_JS_FOR_SERVER___

if (!data.array_data) {
  if (data.inside_array) {
    return [[]];
  }
  
  return [];
}

let ar = data.array_data.map(a => a.value);

if (data.inside_array) {
  return [ar];
}

return ar;


___TESTS___

scenarios: []


___NOTES___

Created on 30/09/2021, 18:10:20


