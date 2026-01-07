def test_version_exists():
    from cosmotech.aip import __version__

    assert __version__ is not None
