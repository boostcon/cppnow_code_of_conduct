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
%%CONFERENCE%%             - Name of the conference.
%%COMMUNITY%%              - The community served by the conference. 
%%COC_STAFF_CONTACT_INFO%% - The contact information for the conference staff
                             members who handle Code of Conduct matters; use of
                             a multi-line markdown list is suggested.
%%COC_STAFF_FIRST_NAMES%%  - The first names of the above conference staff
                             members.
```

For example, for C++Now, the placeholders would be replaced with:

```
%%CONFERENCE%%             - C++Now 
%%COMMUNITY%%              - C++ and Boost
%%COC_STAFF_CONTACT_INFO%% - * Jackie Kay,              Attendee Liaison, [mailto:jackie@cppnow.org][]
                             * Bryce Adelstein Lelbach, Program Chair,    [mailto:bryce@cppnow.org][]
                             * Jon Kalb,                Conference Chair, [mailto:jon@cppnow.org][]
%%COC_STAFF_FIRST_NAMES%%  - Jackie, Bryce and/or Jon
```

The [instantiate.bash](instantiate.bash) shell script can be used to replace
the placeholders.
