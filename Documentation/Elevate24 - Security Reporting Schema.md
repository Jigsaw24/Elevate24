# Security Reporting Schema for Elevate24

The below reporting schema is to be used on customer owned SIEM solutions. This schema is for the Elevate24 Security Extension and does not include the Application data. 


## Schema

```json
{
  "$schema": "http://json-schema.org/draft-07/schema#",
  "title": "EndPointSecurityEvent",
  "type": "object",
  "properties": {
    "id": {
      "type": "string",
      "format": "uuid"
    },
    "eventtype": {
      "type": "string"
    },
    "processpath": {
      "type": "string"
    },
    "target": {
      "type": "string",
      "default": ""
    },
    "pid": {
      "type": "integer"
    },
    "ppid": {
      "type": "integer"
    },
    "isplatform": {
      "type": "boolean"
    },
    "timestamp": {
      "type": "integer"
    },
    "username": {
      "type": "string"
    },
    "signingid": {
      "type": "string"
    },
    "teamId": {
      "type": "string"
    },
    "arguments": {
      "type": "array",
      "items": {
        "type": "string"
      }
    },
    "source": {
      "type": "string"
    },
    "action": {
      "type": "string"
    },
    "customReference": {
      "type": ["string", "null"]
    },
    "processTree": {
      "type": "array",
      "items": {
        "$ref": "#/definitions/EndpointSecurityProcessTree"
      },
      "default": []
    },
    "extensionVersion": {
      "type": ["string", "null"]
    },
    "newFile": {
      "type": ["boolean", "null"]
    },
    "log": {
      "type": "boolean",
      "default": true
    },
    "sourceSigningId": {
      "type": ["string", "null"]
    },
    "TimeGenerated": {
      "type": ["string", "null"]
    },
    "serialNumber": {
      "type": ["string", "null"]
    },
    "signal": {
      "type": ["integer", "null"]
    },
    "blocked": {
      "type": ["boolean", "null"]
    },
    "path": {
      "type": ["string", "null"]
    },
    "fromMacAppStore": {
      "type": ["boolean", "null"]
    },
    "CFBundleShortVersionString": {
      "type": ["string", "null"]
    },
    "CFBundleVersion": {
      "type": ["string", "null"]
    },
    "CFBundleIdentifier": {
      "type": ["string", "null"]
    },
    "originalFromMacAppStore": {
      "type": ["boolean", "null"]
    },
    "originalCFBundleShortVersionString": {
      "type": ["string", "null"]
    },
    "originalCFBundleVersion": {
      "type": ["string", "null"]
    },
    "originalCFBundleIdentifier": {
      "type": ["string", "null"]
    }
  },
  "required": [
    "id",
    "eventtype",
    "processpath",
    "pid",
    "ppid",
    "isplatform",
    "timestamp",
    "username",
    "signingid",
    "teamId",
    "arguments",
    "source",
    "action"
  ],
  "definitions": {
    "EndpointSecurityProcessTree": {
      "type": "object",
      "properties": {
        "pid": {
          "type": "integer"
        },
        "name": {
          "type": "string"
        }
      },
      "required": [
        "pid",
        "name"
      ]
    }
  }
}
```




