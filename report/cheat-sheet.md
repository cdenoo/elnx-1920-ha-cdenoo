# Cheat sheet

Use this file to write down the most important commands you encounter, so you can look them up quickly. Put some clear structure in this document, or split it up if it becomes too large. [Use Markdown correctly](https://help.github.com/articles/getting-started-with-writing-and-formatting-on-github/). For inspiration and a motivation for why you should keep this type of cheat sheets, take a look at <https://github.com/bertvv/cheat-sheets/>.

## Vim survival guide

- When starting up Vim, you're in *normal mode*.
- To enter text, first go to *insert mode*.

| Taak                       | Commando |
| :------------------------- | :------- |
| Normal mode -> insert mode | `i`      |
| Insert mode -> normal mode | `<Esc>`  |
| Opslaan                    | `:w`     |
| Opslaan en afsluiten       | `:wq`    |
| Afsluiten zonder opslaan   | `:q!`    |

## Vagrant
| Taak                   | Commando           |
| :--------------------- | :----------------- |
| vagrantbox opstarten   | vagrant up         |
| vagrantbox verwijderen | vagrant destroy -f |
| vagrantbox provisionen | vagrant provision  |

## Git
| Taak                                 | Commando                    |
| :----------------------------------- | :-------------------------- |
| alle changes toevoegen               | git add .                   |
| toegevoegde changes committen        | git commit -m "`<message>`" |
| commits van local naar remote pushen | git push                    |
| changes van remote naar local halen  | git pull                    |
| repository naar local kopieren       | git clone `<repo-link>`     |

## Docker-compose
| Taak                                                      | Commando                                                   |
| :-------------------------------------------------------- | :--------------------------------------------------------- |
| docker-compose up -d                                      | Up the Docker daemon                                       |
| docker-compose down                                       | Take down the Docker daemon                                |
| docker-compose down -v                                    | Delete all docker volumes specified in docker-compose file |
| docker-compose -f /vagrant/files/docker-compose.yml up -d | Up docker-compose file in different directory              |
| docker-compose -f /vagrant/files/docker-compose.yml down  | Take down docker-compose file in different directory       |