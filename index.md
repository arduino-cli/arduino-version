---
layout: arduino-latest
title: Arduino Latest Version
---

# Arduino Latest Version 🛎 
Ever wonder which is the latest version of Arduino IDE currently released?
<br>Now you can know it, programmatically!

## Get the latest version number
You can know witch is the latest version of arduino available by hitting this URL:
```
https://arduino-cli.github.io/arduino-latest/VERSION
```

## Usage
### curl
```bash
$ curl https://arduino-cli.github.io/arduino-latest/VERSION
```

### node
```javascript
const request = require('request');
const latest_endpoint = 'https://arduino-cli.github.io/arduino-latest/VERSION';

request(latest_endpoint, function (error, response, body) {
   if (!error && response.statusCode == 200) {
       console.log(body) // Shows the version on the console.
   }
});
```

## Arduino mirrors
Binaries of the Arduino IDE can be downloaded from the mirrors below:

OS | Arch | URI
---|------|----
win32 | x64 | [https://downloads.arduino.cc/arduino-`VERSION`-windows.zip](https://www.arduino.cc/en/Main/Software)
darwin | x64 | [https://downloads.arduino.cc/arduino-`VERSION`-macosx.zip](https://www.arduino.cc/en/Main/Software)
linux | x32 | [https://downloads.arduino.cc/arduino-`VERSION`-linux32.tar.xz](https://www.arduino.cc/en/Main/Software)
linux | x64 | [https://downloads.arduino.cc/arduino-`VERSION`-linux64.tar.xz](https://www.arduino.cc/en/Main/Software)
linux | arm | [https://downloads.arduino.cc/arduino-`VERSION`-linuxarm.tar.xz](https://www.arduino.cc/en/Main/Software)
<br>

## Arduino download page
The latest version available can be verified [here](https://www.arduino.cc/en/Main/Software).

## Authors
* **Simone Primarosa** - [simonepri](https://github.com/simonepri)

See also the list of [contributors](https://github.com/simonepri/roboprime/contributors) who participated in this project.


## License
This project is licensed under the MIT License - see the [https://github.com/arduino-cli/arduino-latest/blob/master/LICENSE](LICENSE) file for details.
