import app

def test_main_runs(capsys):
    app.main()
    captured = capsys.readouterr()
    assert "Public Key:" in captured.out
    assert "Private Key:" in captured.out

