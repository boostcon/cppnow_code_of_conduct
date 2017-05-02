The C++ Code of Conduct is:

* A set of rules regarding appropriate behavior and procedures for dealing with
    violations of those rules.
* Intended for use at C++ community events.
* Generic; concrete event details, contact info, etc have been replaced with
    generic placeholders.

This is version 1.0 of the C++ Code of Conduct.
It is licensed under the [Creative Commons Attribution 3.0 Unported License](https://creativecommons.org/licenses/by/3.0).
It is a derivative of the [PyCon Code of Conduct](https://github.com/python/pycon-code-of-conduct)
  and the [Geek Feminism wiki](https://geekfeminism.wikia.com/wiki/Conference_anti-harassment).

All placeholders match the regex `%%[A-Za-z0-9-]+%%`. The placeholders are:

```
%%CONFERENCE%%           - Name of the conference.
%%COMMUNITY%%            - The community served by the conference. 
%%COC_TEAM_FIRST_NAMES%% - The conference staff who incidents should be reported to (first names).
%%COC_TEAM_FULL_NAMES%%  - The conference staff who incidents should be reported to (full names).
%%COC_DECISION_MAKERS%%  - The conference staff who decide what actions should be taken in response to an incident (first names).
%%COC_EMAIL%%            - The email that incident reports should be sent to. 
```

For example, for C++Now, the placeholders would be replaced with:

```
%%CONFERENCE%%           - C++Now 
%%COMMUNITY%%            - C++ and Boost
%%COC_TEAM_FIRST_NAMES%% - Jon, Bryce and Jackie 
%%COC_TEAM_FULL_NAMES%%  - Jon Kalb (Conference Chair), Bryce Adelstein Lelbach (Program Chair) and Jackie Kay
%%COC_DECISION_MAKERS%%  - Jon
%%COC_EMAIL%%            - [mailto:security@cppnow.org][] 
```

The [instantiate.bash](instantiate.bash) shell script can be used to replace
the placeholders.
