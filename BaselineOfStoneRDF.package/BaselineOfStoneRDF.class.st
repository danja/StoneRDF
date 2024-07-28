BaselineOf subclass: #BaselineOfStoneRDF
    instanceVariableNames: ''
    classVariableNames: ''
    package: 'BaselineOfStoneRDF'

BaselineOfStoneRDF >> baseline: spec
    <baseline>
    spec for: #common do: [
        "Define your project structure here"
        spec 
            package: 'StoneRDF-Core';
            package: 'StoneRDF-Tests' with: [ spec requires: #('StoneRDF-Core') ].
        spec 
            group: 'default' with: #('Core' 'Tests');
            group: 'Core' with: #('StoneRDF-Core');
            group: 'Tests' with: #('StoneRDF-Tests')
    ]