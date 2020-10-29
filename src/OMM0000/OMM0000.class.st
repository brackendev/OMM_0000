"
I am Omm0000, a WAComponent subclass.
"
Class {
	#name : #OMM0000,
	#superclass : #WAComponent,
	#instVars : [
		'say',
		'morph'
	],
	#category : #OMM0000
}

{ #category : #initialization }
OMM0000 class >> initialize [
	WAAdmin register: self asApplicationAt: 'OMM 0000'
]

{ #category : #utilities }
OMM0000 >> chooseImageForm [
	| form |
	form := OMM0000Images pictureIcon.
	^ form scaledToSize: 520 @ 520
]

{ #category : #utilities }
OMM0000 >> createMorph: aString [
	| textMorph x |
	morph := self chooseImageForm asMorph.

	textMorph := TextMorph new
		contents: '  ' , aString , '  ';
		color: Color white;
		backgroundColor: Color darkGray;
		wrapFlag: true;
		autoFit: true;
		width: morph width;
		centered.

	x := morph width - textMorph width.
	textMorph position: (x / 2) @ (morph height - textMorph height - 20).

	morph addMorph: textMorph
]

{ #category : #accessing }
OMM0000 >> morph [
^ morph
]

{ #category : #accessing }
OMM0000 >> morph: anObject [
morph := anObject
]

{ #category : #rendering }
OMM0000 >> renderContentOn: html [
	self say: nil.

	html form
		style: self style;
		with: [ html
				div: [ html
						paragraph: [ morph ifNil: [ self createMorph: ELIZA new welcomeMessage ].
							html image form: morph
							].
					html
						paragraph: [ html textInput
								callback: [ :value | self say: value ];
								value: nil;
								autofocus.
							html text: ' '.
							html submitButton
								callback: [ self createMorph: (ELIZA respondTo: self say) ];
								value: 'OK'
							]
					]
			]
]

{ #category : #accessing }
OMM0000 >> say [
^ say
]

{ #category : #accessing }
OMM0000 >> say: anObject [
	say := anObject
]

{ #category : #accessing }
OMM0000 >> style [
	^ CascadingStyleSheetBuilder new
		declareRuleSetFor: [ :selector | selector body ]
			with: [ :style | 
			style
				backgroundColor: (CssRGBColor red: 0 green: 0 blue: 0);
				textAlign: #center
			];
		build
]

{ #category : #updating }
OMM0000 >> updateRoot: anHtmlRoot [
	anHtmlRoot
		title: 'OMM 0000';
		style: self style
]
