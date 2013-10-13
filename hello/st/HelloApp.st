Smalltalk current createPackage: 'HelloApp'!
Object subclass: #Hello
	instanceVariableNames: ''
	package: 'HelloApp'!

!Hello methodsFor: 'not yet classified'!

begin
"Makes me say hello to the user."

| msg button |
console log:'BEGIN'.
msg := 'Hello world!!'.
button := '#sayHello' asJQuery.
button click: [console log:'Click!!'.button after: '<p>' , msg , '</p>'].
! !

