# JK Power Engineers — Local Preview

This repository contains a static website that can be previewed locally with Python.

## Run locally

From the repository folder, run:

```bash
chmod +x serve.sh
./serve.sh 8000
```

Then open:

```text
http://127.0.0.1:8000
```

If you omit the port, the script uses port `8000` by default.

### VS Code play button

If you open this folder in VS Code, you can also start the server with a button:

- Open the Command Palette (`Cmd+Shift+P`)
- Choose `Tasks: Run Task`
- Select `Serve local site`

A VS Code running task will appear, and you can stop it with the trash can / terminate button in the terminal panel.

You can also use the NPM script explorer to run `npm run serve` if the NPM Scripts view is visible.

## Notes

- This is a local preview only.
- It does not deploy to GitHub Pages automatically.
- If you want, I can also add a second script for a simple GitHub Pages push workflow.
