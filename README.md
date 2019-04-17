# CJP CCOne Chat Starter
This is a static HTML webpage that takes query parameters and starts a chat with
the CJP CCOne chat system using the values you provided.

## Installation
```sh
git clone https://github.com/ccondry/cjp-ccone-chat-starter.git
cd cjp-ccone-chat-starter
./install.sh
```

## Usage
Open the HTML page in dist/ or on on your web server, and use the following
URL query parameters (replacing with your tenantId, reasonId, etc.):
name=Coty%20Condry
phone=5551112222
email=ccondry@cisco.com
tenantId=1000000
reasonId=4
question=help

## More Information
The tenantId is obtained from your personal CJP CCOne chat URL.

The reasonId is obtained from your personal CJP CCOne chat webpage contents.
To find your reasonId, open your personal CJP CCOne chat webpage like you would
normally do to start a chat. Use your browser's Inspect Element to view the HTML
contents, and look at the select options for chat reason. If your chat reason ID
was 4, you would see `value="4"` as part of the chat reason option line in the
HTML.
