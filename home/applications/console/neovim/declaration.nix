{
  features = {
    # language-independent
    clipboard.enable = false; #                      start
    codeMinimap.enable = false; #                    filetype
    fileBrowserOther.enable = false; #               keybind?
    fileBrowserTree.enable = true; #                 keybind?
    fileBrowserTui.enable = false; #                 keybind?
    generalPurposeAndDependencies.enable = false; #  keybind?
    git.enable = false; #                            keybind?
    github.enable = false; #                         keybind?
    icons.enable = false; #                           start
    media.enable = false; #                          filetype / keybind
    modes.enable = false; #                          start
    multiplexer.enable = false; #                    start?
    notifications.enable = false; #                  start
    outlineAndBreadcrumbs.enable = false; #          keybind
    popupAndMenu.enable = false; #                   start
    productivity.enable = false; #                   keybind
    projectAndConfigManagement.enable = false; #     keybind? start?
    selfReferential.enable = false;
    startScreen.enable = false; #                    autocommand (autocommand for no filetype?)
    statusLine.enable = true; #                      start
    terminal.enable = false; #                       keybind?
    training.enable = false; #                       keybind
    treeFileBrowser.enable = false; #                 filetype? (autocommand for directory?)
    tuiFileBrowser.enable = false; #                 keybind
    ui.enable = false; #                             start

    # quasi language-independent
    ai.enable = false; #                             keybind
    bufferLine.enable = false; #                     start?
    codeExecution.enable = false; #                  keybind
    codeOutline.enable = false; #                    filetype
    comments.enable = false; #                       filetype
    editingEnhancements.enable = false; #            start + filetype
    folding.enable = false; #                        start + filetype?
    incrementAndToggling.enable = false; #           start?
    keybinding.enable = false; #                     start + filetype?
    macros.enable = false; #                         keybind?
    miscellaneous.enable = false; #                  -> mixed
    navigation.enable = false; #                     start + filetype?
    pairs.enable = false; #                          start+ filetype?
    search.enable = false; #                         keybind?
    searchAndReplace.enable = false; #               keybind?
    tabLine.enable = false; #                        start? / keybind? / filetype?
    taskRunner.enable = false; #                     keybind
    textobjects.enable = false; #                    start + filetype?

    # # language-specific
    # completion.enable = false; #                     keybind (filetype-modulated)
    # debugging.enable = false; #                      keybind (filetype-modulated)
    # formattingAndLinting.enable = false; #            keybind (filetype-modulated) / filetype?
    # lsp.enable = false; #                             keybind (filetype-modulated)
    # quickfix.enable = false; #                       keybind (filetype-modulated)
    # refactoring.enable = false; #                    keybind (filetype-modulated)
    # snippets.enable = false; #                       keybind (filetype-modulated)
    # syntaxHighlightingAdditional.enable = false; #   keybind (filetype-modulated)
    # testingAndCoverage.enable = false; #             keybind (filetype-modulated)
    # treesitterAndExtensions.enable = false; #        filetype

    # own language
  };
  languages = {
    apl.enable = false;
    assembly.enable = false;
    bash.enable = false;
    c.enable = false;
    clojure.enable = false;
    commonLisp.enable = false;
    cpp.enable = false;
    crystal.enable = false;
    css.enable = false;
    d.enable = false;
    dartFlutter.enable = false;
    dhall.enable = false;
    elisp.enable = false;
    elixir.enable = false;
    elm.enable = false;
    elvish.enable = false;
    erlang.enable = false;
    fennel.enable = false;
    fish.enable = false;
    go.enable = false;
    guile.enable = false;
    haskell.enable = false;
    haxe.enable = false;
    hexadecimal.enable = false;
    html.enable = false;
    hyprlang.enable = false;
    java.enable = false;
    javascript.enable = false;
    json.enable = false;
    julia.enable = false;
    kdl.enable = false;
    kotlin.enable = false;
    lua.enable = false;
    markdown.enable = false;
    moonscript.enable = false;
    nickel.enable = false;
    nim.enable = false;
    nix.enable = false;
    norg.enable = false;
    nushell.enable = false;
    ocaml.enable = false;
    octave.enable = false;
    org.enable = false;
    perl.enable = false;
    php.enable = false;
    purescript.enable = false;
    python.enable = true;
    r.enable = false;
    racket.enable = false;
    raku.enable = false;
    roc.enable = false;
    ruby.enable = false;
    rust.enable = false;
    scala.enable = false;
    scheme.enable = false;
    scss.enable = false;
    starlark.enable = false;
    teal.enable = false;
    tex.enable = false;
    toml.enable = false;
    typescript.enable = false;
    typst.enable = false;
    vimscript.enable = false;
    vim9script.enable = false;
    vlang.enable = false;
    yaml.enable = false;
    yuck.enable = false;
    zig.enable = false;
  };
}
