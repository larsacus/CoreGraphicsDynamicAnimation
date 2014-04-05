#The What
A neat sample project for dynamically animating in CoreAnimation anything drawn in drawRect: using CoreGraphics.

#The How
Using some hand-waving, documentation reading, and internet browsing, I've distilled the steps required for this method to work down into the following recipe:

You'll find the following recipe documented in-context in the `TOLLightLayer.m` class:

1. `@dynamic <property_name>` - Let CoreAnimation generate the properties accessors at runtime for our animatable properties.
2. `initWithLayer:` - Let CoreAnimation make multiple copies of this layer to use as the presentation layer. Similar to a `copyWithZone:` implementation. Many layer copies are used for presentation interpolation.
3. `needsDisplayForKey:` - Tells CoreAnimation we need to re-draw for our custom animatable property when it is "changed" (always YES for now -- whether or not always returning YES is necessary or if it can be conditional).
4. `actionForKey:` - Return an explicit animation (action) for our custom attribute so that CoreAnimation has something to interpolate. Animation curve, timing, etc all have an effect on how many times drawRect: is called.
5. `drawInContext:` - Draw your stuff based on parameters (properties) that this layer accepts as input and that has been parameterized in the above method implementations.
6. Profit?


### @theonlylars