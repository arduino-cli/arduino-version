# Arduino Latest Version 🛎 
Ever wonder which is the latest version of Arduino IDE currently released?
<br>Now you can know it, programmatically!

## Get the latest version number
You can know witch is the latest version of arduino available by hitting this URL:
```
https://arduino-cli.github.io/arduino-version/latest
```

## Get all available versions downloadable
You can get the list of all available versions of arduino by hitting this URL:
```
https://arduino-cli.github.io/arduino-version/list
```

## Usage
### curl
```bash
$ curl https://arduino-cli.github.io/arduino-version/latest
```

```bash
$ curl https://arduino-cli.github.io/arduino-version/list
```

### node
```javascript
const request = require('request');
const latest_endpoint = 'https://arduino-cli.github.io/arduino-version/latest';
const list_endpoint = 'https://arduino-cli.github.io/arduino-version/list';

request(latest_endpoint, function (error, response, body) {
   if (!error && response.statusCode == 200) {
       console.log(body) // Shows the version on the console.
   }
});

request(list_endpoint, function (error, response, body) {
   if (!error && response.statusCode == 200) {
       console.log(body.split(',')) // Shows the list on the console.
   }
});
```

## Arduino mirrors
Binaries of the Arduino IDE can be downloaded from the mirrors below:

OS | Arch | URI
---|------|----
win32 | x64 | [https://github.com/arduino-cli/arduino-version/releases/download/`VERSION`/arduino-`VERSION`-windows.zip](https://www.arduino.cc/en/Main/Software)
darwin | x64 | [https://github.com/arduino-cli/arduino-version/releases/download/`VERSION`/arduino-`VERSION`-macosx.zip](https://www.arduino.cc/en/Main/Software)
linux | x32 | [https://github.com/arduino-cli/arduino-version/releases/download/`VERSION`/arduino-`VERSION`-linux32.zip](https://www.arduino.cc/en/Main/Software)
linux | x64 | [https://github.com/arduino-cli/arduino-version/releases/download/`VERSION`/arduino-`VERSION`-linux64.zip](https://www.arduino.cc/en/Main/Software)
linux | arm | [https://github.com/arduino-cli/arduino-version/releases/download/`VERSION`/arduino-`VERSION`-linuxarm.zip](https://www.arduino.cc/en/Main/Software)

> arm binaries are not available for all versions 😞

## Arduino download page
The latest version available can be verified [here](https://www.arduino.cc/en/Main/Software).

## Authors
* **Simone Primarosa** - [simonepri](https://github.com/simonepri)

See also the list of [contributors](https://github.com/simonepri/roboprime/contributors) who participated in this project.


## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
