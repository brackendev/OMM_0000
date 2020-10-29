OMM 0000
========

* [Pharo 8.0](https://www.pharo.org/) reference platform.

## Installation

In a Playground, _Do It_:

```smalltalk
Metacello new 
  repository: 'github://brackendev/OMM_0000/src';
  baseline: 'OMM0000';
  onConflict: [ :ex | ex useIncoming ];
  onUpgrade: [ :ex | ex useIncoming ];
  onDowngrade: [ :ex | ex useLoaded ];
  ignoreImage;
  load.
```

## Usage

In a Playground, _Do It_:

```smalltalk
WebBrowser openOn: 'http://127.0.0.1:8080/OMM0000/'.
```

## Acknowledgements

This project makes use of the following third-party libraries and utilities:

* [ELIZA-Smalltalk](https://github.com/brackendev/ELIZA-Smalltalk)
* [IconFactory](https://github.com/peteruhnak/IconFactory)
* [RenoirSt](https://github.com/ba-st/RenoirSt)
* [Seaside](https://github.com/SeasideSt/Seaside)

## Author

[brackendev](https://www.github.com/brackendev)

## License

OMM 0000 is released under the MIT license. See the LICENSE file for more info.
