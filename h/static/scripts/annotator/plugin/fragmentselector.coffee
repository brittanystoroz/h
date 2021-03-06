# Annotator plugin for creating the Fragment Selector
class Annotator.Plugin.FragmentSelector extends Annotator.Plugin

  pluginInit: ->

    # Register the creator Fragment selectors
    @annotator.anchoring.selectorCreators.push
      name: "FragmentSelector"
      describe: @_getFragmentSelector

  # Create a FragmentSelector around a range
  _getFragmentSelector: (annotation, target) =>
    fragment = (new URL(@annotator.getRawHref())).hash

    [
      type: "FragmentSelector"
      value: fragment
    ]
