# How to add translations of the qmk.fm website

Each language should have its own folder in `_i18n/`, named using the ISO 639-1 language code, followed by `-` and the country code where relevant. [A list of common ones can be found here](https://www.andiamo.co.uk/resources/iso-language-codes/).

Permalinks should be generated automatically from the filename, but need to be set manually for `index.md` pages. The `lang` variable should be set on all pages. Both of these, along with `title` (used in `<title>` in the head, and other metadata) are examplified in the front matter (put at the top of the file) here:

    ---
    title: "QMK固件"
    permalink: /zh-cn/
    lang: "zh-cn"
    ---

A `summary.md` is needed to render the sidebar content - `_includes/en_sidebar.md` should be used as the template. Links should be relativised with the language preceding it: `/zh-cn/support`.

The `_data/strings.yml` file also needs to have an entry for the language:

      zh-cn: &DEFAULT_ZH_CN
        <<: *DEFAULT_EN
        language_name: "中文"
        language: "官话"
        qmk_firmware: "QMK固件"

The `<<: *DEFAULT_EN` allows `zh-cn` to inherit all values from the English entry, and the keys following it override those. It's recommended to translate all entries for full coverage.