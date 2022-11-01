name: Bug Report
description: If you experienced a bug while playing with Three Headed Beast
labels: bug
body:
  - type: markdown
    attributes:
      value: |
        Before reporting, please use the search function to make sure an issue hasn't been reported already.
        This avoids duplicates.

  - type: dropdown
    attributes:
      label: Minecraft Version
      description: |
        Select the Minecraft version.
        *If your version does not show up here, support for it has been ended.*
      options:
        - '1.16'
        - '1.18'
    validations:
      required: true

  - type: input
    attributes:
      label: Three Headed Beast Version
      description: The version of Three Headed Beast you are using. DO NOT USE "LATEST"
      placeholder: "MAJOR.MINOR.PATCH"
    validations:
      required: true

- type: textarea
    id: description
    attributes:
      label: Bug Description
      description: Describe the bug in as much detail including what you were doing before/durring/and after the bug appeared.
    validations:
      required: true

  - type: textarea
    id: expected
    attributes:
      label: Expected Behavior
      description: Explain how you expect a block/item/feature to work.
    validations:
      required: true

  - type: textarea
    id: actual
    attributes:
      label: Actual Behavior
      description: Explain the actual behavior your witnessed in game.
    validations:
      required: true

  - type: textarea
    id: reproduce
    attributes:
      label: Steps to reproduce
      description: |
        Explain in easy steps how to reproduce this issue.
        Provide pictures here if you believe that they help with visualization.
      placeholder: |
        1. First I did...
        2. Then I did...
        3. And then it broke
    validations:
      required: true

- type: textarea
    id: photos
    attributes:
      label: Photos
      description: Drag and drop photos to this section if applicable.
    validations:
      required: false

  - type: input
    attributes:
      label: Logs
      description: Add LINKS to your pastebin or gist dump of any logs you can get your hands on. This could be a crash log, latest.log, and/or a server latest/debug.log.These can be found in the crash-reports or logs folder of the pack respectively. DO NOT PASTE LOGS HERE
      placeholder: <gist or pastebin link>
    validations:
      required: true
