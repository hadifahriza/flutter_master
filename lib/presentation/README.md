# Explanation Presentation

**splash_screens.dart**
Page for customable splash screen.

## example_page
Contain an example code relate to how I manage each **Page** or each **Feature**. Inside this directory will have 
1. **widgets directory** which contain all specific widget that only be used in specific page or feature.
2. **args** which contain an argument for specific page or feature.
3. **notifier** a implementation of provider for specific page or feature.
4. **page** which serve as main page or feature.

## global_notifier
Contain the implementation of provider that could be accessed by all pages or features and a list of provider that will registered in [injection](../injection.dart)

## global_widgets
Contain all widget which can be accessed by all pages or features.
