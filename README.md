# XPipe Vault (Keep this repository private!)

This repository contains all connection information that is designated to be shared.

You can sync with this repository in all XPipe application instances the same way, every change you make in one instance will be reflected in the repository. 

## Category list

- **Connections**
  - [**Default**](categories/97458c07-75c0-4f9d-a06e-92d8cdf67c40)
    - [**APs**](categories/4f439168-5c27-4522-b3df-ad8e500d6fa1)
- **Scripts**

## Connection list

**All connections / Default**

- [**bb**](stores/92e6a3fc-bb0e-4a2f-90bc-fa26eb9bb1c7)
  - [**Podman**](stores/bf43868a-a93f-4924-a80f-9591b4d84e7f)
    - [**plex**](stores/f10513b5-7cf9-440b-a408-56700f59008e)
      - [**Services**](stores/b45085de-9964-435c-a3d9-4936f35909d7)
  - [**Shell Environments**](stores/93cc12fc-b7af-384f-91b4-59906361fb8c)
    - [**bash**](stores/c9daa41a-0e7c-40fc-b302-69fa99a66552)
- [**deb12torrent**](stores/eb8ed849-34b1-4d6e-a08b-fd88999c57aa)
  - [**Shell Environments**](stores/6583959b-e2e5-3d42-86f2-8fc3b2a3f643)
    - [**bash**](stores/756f6a73-4a2f-46ee-95a0-ac75df30f8a5)
    - [**dash**](stores/604ea188-dbdd-49de-b54a-047105a74ef0)
- [**eden**](stores/db73f4e1-be6e-4d77-b95f-4f21d6737022)
  - [**Podman**](stores/ef1c3b64-94e8-4c97-b550-a78e6225e62f)
    - [**jolly_dijkstra**](stores/74228dbd-e620-43ac-883a-bd19b7c29026)
      - [**Services**](stores/47a3e8a5-2f34-4409-ad8a-eabb1f9f59c9)
    - [**serene_wing**](stores/0a316c8a-16de-4375-b1f7-8256cfb99fa5)
      - [**Services**](stores/bac4568d-add0-4c07-8b94-3acc86b29aff)
  - [**Shell Environments**](stores/42db7acf-1a58-360f-a939-90c821495648)
    - [**bash**](stores/a1a4fe87-5c5b-427a-8cf5-84a6c3213eb8)
- [**eden**](stores/26a3064b-0089-4123-b5e3-4ee16324768d)
  - [**Podman**](stores/f8810c05-c310-4025-9095-4ae13d1a5492)
    - [**jolly_dijkstra**](stores/e440680d-60de-41e0-8c5d-5b0977ac2d74)
      - [**Services**](stores/0c7595ef-0aea-41a9-bbbe-16cbc8f45c27)
    - [**serene_wing**](stores/bf5f8be0-c36a-48c7-bba1-752044863043)
      - [**Services**](stores/717e0336-62e6-4ddb-8de4-942f450f34cf)
  - [**Shell Environments**](stores/a0c2aa1d-55a1-3cb5-b5da-45e932de10a4)
    - [**bash**](stores/d093405e-3302-4968-b54f-c28cdfc3d7b6)

**All connections / Default / APs**

- [**UAP-AC-Lite-BZ.6.6.77**](stores/9b6dcca9-252c-4212-9774-f59a7a3773a0)
  - [**Shell environments**](stores/79d7cc20-bd76-396d-969b-9aaff251bd04)
    - [**ash**](stores/0989e737-65a9-4a89-a079-d70a30b415ef)
- [**UAP-AC-Pro-Gen2**](stores/ec6cf228-05b1-4597-bb79-b6182b579b69)
- [**UAP-nanoHD-BZ**](stores/cd701694-b4e5-4212-877a-4851cd637c4d)


## Secret encryption

You have the option to fetch any sensitive information like passwords from outside sources like password managers or enter them at connection time through a prompt window. In that case, XPipe doesn't have to store any secrets itself.

In case you choose to store passwords and other secrets within XPipe, all sensitive information is encrypted when it is saved using AES with either:

- A dynamically generated key file `vaultkey` (The data can then only be decrypted with that file present)
- A custom master passphrase that can be set by you in the settings menu, combined with the vault key file (This option is only as secure as the password you choose)

By default, general connection data is not encrypted, only secrets are.
So things like hostnames and usernames are stored without encryption, which is in line with many other tools.
There is an available vault setting in the settings menu to encrypt all connection data if you want to do that.

## Cloning the repository on other systems

Nowadays, most providers require a personal access token (PAT) to authenticate from the command-line instead of traditional passwords.
You can find common (PAT) pages here:
- **GitHub**: [Personal access tokens (classic)](https://github.com/settings/tokens)
- **GitLab**: [Personal access token](https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html)
- **BitBucket**: [Personal access token](https://support.atlassian.com/bitbucket-cloud/docs/access-tokens/)
- **Gitea**: `Settings -> Applications -> Manage Access Tokens section`
Set the token permission for repository to Read and Write. The rest of the token permissions can be set as Read.

Even if your git client prompts you for a password, you should enter your token unless your provider still uses passwords.

If you don't want to enter your credentials every time, you can use any git credentials manager for that.
For more information, see for example:
- https://git-scm.com/doc/credential-helpers
- https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git

Some modern git clients also take care of storing credentials automatically.

## Troubleshooting

### Adding categories to the repository

By default, no categories are set to shared so that you have explicit control on what connections to commit.

To have your connections of a category put inside your git repository,
you need to click on the `⚙️` icon (when hovering over the category)
in your `Connections` tab under the category overview on the left side.
Then click on `Add to git repository` to sync the category and connections to your git repository.
This will add all shareable connections to the git repository.

### Local connections are not synced

Any connection located under the local machine can not be shared as it refers to connections and data that are only available on the local system.

Certain connections that are based on a local file, for example SSH configs, can be shared via git if the underlying data, in this case the file, have been added to the git repository as well.

### Other issues

If you encounter any other issues, you can try interacting with the cloned repository manually.
You can find it at `%USERPROFILE%\.xpipe\storage\` or `~/.xpipe/storage/`.
XPipe will call your installed git client, so any potential issues with your local git client also transfer to XPipe.

To understand what went wrong, you can also launch XPipe in debug mode at `Settings -> Troubleshoot -> Launch in debug mode`.
This will tell you in detail what git commands are executed.
