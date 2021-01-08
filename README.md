# About
An [Iro](https://eeyo.io/iro/documentation/index.html) grammar for [RepRap's G-code](https://duet3d.dozuki.com/Wiki/Gcode) flavor. This flavor supports a [custom expression syntax](https://duet3d.dozuki.com/Wiki/GCode_Meta_Commands) that doesn't appear in other G-code flavors.

Iro is a tool for producing syntax files that can be consumed by most popular editors. While each individual generated syntax isn't going to be as elegant as it could be if written by hand, its unlikely that anyone will spend the time to do that. Having wider editor support is a win for users of the language.

# Status
Very much an alpha. Support for expression scopes is completely absent. It does understand text strings and comments correctly as well as recognize most of the scripting languages basic elements. So it looks pretty but is brittle and shallow.

## Syntax & Scopes
Gcode is a document style language with has single line instructions. Rep Rap Gcode is a GCode flavor with an embedded scripting language. To try to model this I'm treating GCode like we treat HTML with embedded JavaScript. GCode commands are assigned scopes from the `markup.` space and entities belonging to an expression are generally assigned scoped from various source code language scopes.

