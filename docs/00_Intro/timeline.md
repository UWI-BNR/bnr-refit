# BNR Refit Project Timeline (2025–2026)

This timeline outlines the planned activities for the BNR Refit Project, which runs from January 2025 to March 2026. The project focuses on enhancing analytics, automating report generation, simplifying access via a code-free interface, and building robust training resources for staff. It is organized into four key phases and includes time for wrap-up and final testing.

```mermaid
gantt
    title BNR Refit Project Timeline (2025–2026)
    dateFormat  YY-MM
    axisFormat  %b

    section PHASE 0
    Contract Wait                           :done, a1, 2024-11-31, 120d
    Dataset Wait                            :crit, 2025-02-01, 180d

    section PHASE 1 - ASSESS ANALYTICS
    Audit Do files                          :active, b1, 2025-08-01, 30d
    Data release process                    :active, b2, after b1, 14d
    Data dissemination process              :active, b3, after b1, 14d
    Web Report                              :milestone, m1

    section PHASE 2 - NEW ANALYTICS
    Re-write report (Annual)                :c1, after b3, 21d
    Re-write report (Monthly)               :c2, after c1, 21d
    Re-write reports (Admin)                :c3, after c2, 21d
    Do Files                                :milestone, m2

    section PHASE 3 - CODE-FREE ACCESS
    Build Stata menu system                 :d1, after c3, 30d
    Installation SOP                        :d2, after d1, 7d
    Menu system                             :milestone, m3

    section PHASE 4 - SYSTEM TRAINING
    Build online Web Manual                 :e1, 2025-07-01, 210d
    Asynchronous training                   :e2, after e1, 14d
    Web resource                            :milestone, m4

    section WRAP-UP
    Final testing and wrap-up               :f1, after e2, 30d
```
