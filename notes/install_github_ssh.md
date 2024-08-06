# Setting up GitHub

- Whenever you are publishing changes, you will be uploading via `git`, and `git` needs to know who you are.
```bash
git config --global user.name "Your Name"
git config --global user.email "Your Email"
git config --global init.defaultBranch main
git config --global commit.gpgsign true
```
> :warning: In case you have "GPG" errors while creating commits, then run the following command:
```
git config --global commit.gpgsign false
```

- If you have set up SSH keys already, skip forward.
  Check if you have pre-existing SSH keys:
```bash
ls -la ~/.ssh
```
- In case you see `id_ed25519` in the output, do not generate the SSH keys, you already have them
```bash
-rw-------  1 alphadelta1803 alphadelta1803  464 Aug  3  2023 id_ed25519
-rw-r--r--  1 alphadelta1803 alphadelta1803  106 Aug  3  2023 id_ed25519.pub
```

- If you see no output like the above, then you need to generate SSH keys with the command
```bash
ssh-keygen -t ed25519 -C "your_email@example.com" <Enter your email address>
```
- You will see the following lines, follow the instructions in `< >`
```bash
Enter a file in which to save the key (/home/$USER/.ssh/id_ed25519):<Press Enter>
Enter passphrase (empty for no passphrase): <Type a passphrase>
Enter same passphrase again: <Type passphrase again>
```

- Add the SSH-key to the agent:
```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

- Next, you need to add the SSH key to your GitHub account with the following steps

1. Copy the SSH public key to your clipboard.
```bash
cat ~/.ssh/id_ed25519.pub
<copy all the output to clipboard>
```
2. Go to the [SSH & GPG Keys](https://github.com/settings/keys) in your GitHub profile settings, and [add](https://github.com/settings/ssh/new) a SSH key
3. Paste the contents of the clipboard to the `Key` field
4. Give a title to the key, say `laptop`
5. Select `Authentication Key`
6. Next, [add](https://github.com/settings/ssh/new) the same key again, but this time as a `Signing Key`

- Congratulations, you have added your SSH key to GitHub

