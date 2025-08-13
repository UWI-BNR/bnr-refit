# import plotly.express as px
# import pandas as pd

# Define your task timeline
# df = pd.DataFrame([
#     dict(Task="Audit current Stata algorithms", Start='2025-07-01', Finish='2025-07-31', Phase='Phase 1'),
#     dict(Task="Develop dataset release process", Start='2025-08-01', Finish='2025-08-31', Phase='Phase 1'),
#     dict(Task="Create SOP for dataset release", Start='2025-09-01', Finish='2025-09-20', Phase='Phase 1'),
#     dict(Task="Internal review and revision", Start='2025-09-21', Finish='2025-10-05', Phase='Phase 1'),
#     dict(Task="Finalize & approve deliverables", Start='2025-10-06', Finish='2025-10-15', Phase='Phase 1'),
# 
#     dict(Task="Build automated monthly analytics", Start='2025-10-16', Finish='2025-11-15', Phase='Phase 2'),
#     dict(Task="Develop quarterly/annual analytics", Start='2025-11-16', Finish='2025-12-15', Phase='Phase 2'),
#     dict(Task="Automate report generation", Start='2025-12-16', Finish='2026-01-05', Phase='Phase 2'),
#     dict(Task="Validate no-code implementation", Start='2026-01-06', Finish='2026-01-20', Phase='Phase 2'),
#     dict(Task="Review analytics environment", Start='2026-01-21', Finish='2026-01-30', Phase='Phase 2'),
# 
#     dict(Task="Final testing and wrap-up", Start='2026-02-01', Finish='2026-03-15', Phase='Wrap-Up')
# ])
# 
# # Create Plotly Gantt chart
# fig = px.timeline(
#     df,
#     x_start="Start",
#     x_end="Finish",
#     y="Task",
#     color="Phase",
#     title="BNR Refit Project Timeline"
# )
# 
# fig.update_yaxes(autorange="reversed")
# 
# # Save to HTML
# fig.write_html("docs/assets/bnr-gantt.html", include_plotlyjs='cdn')


import plotly.graph_objects as go
from datetime import datetime, timedelta
import pandas as pd

# --- Helper Functions ---
def add_days(date_str, days):
    return (datetime.strptime(date_str, "%Y-%m-%d") + timedelta(days=days)).strftime("%Y-%m-%d")

# --- Task List ---
tasks = [
    # Phase 0
    {"Task": "Contract Wait", "Start": "2024-11-30", "Finish": "2025-03-30", "Phase": "PHASE 0"},
    {"Task": "Dataset Wait", "Start": "2025-02-01", "Finish": "2025-07-31", "Phase": "PHASE 0"},

    # Phase 1
    {"Task": "Audit Do files", "Start": "2025-08-01", "Finish": "2025-08-31", "Phase": "PHASE 1-ASSESS ANALYTICS"},
    {"Task": "Data release process", "Start": "2025-09-01", "Finish": add_days("2025-08-31", 14), "Phase": "PHASE 1-ASSESS ANALYTICS"},
    {"Task": "Data dissemination process", "Start": "2025-09-01", "Finish": add_days("2025-08-31", 14), "Phase": "PHASE 1-ASSESS ANALYTICS"},

    # Phase 2
    {"Task": "Re-write report (Annual)", "Start": "2025-09-14", "Finish": add_days("2025-09-14", 21), "Phase": "PHASE 2-NEW ANALYTICS"},
    {"Task": "Re-write report (Monthly)", "Start": "2025-10-05", "Finish": add_days("2025-10-05", 21), "Phase": "PHASE 2-NEW ANALYTICS"},
    {"Task": "Re-write reports (Admin)", "Start": "2025-10-26", "Finish": add_days("2025-10-26", 21), "Phase": "PHASE 2-NEW ANALYTICS"},

    # Phase 3
    {"Task": "Build Stata menu system", "Start": "2025-11-16", "Finish": add_days("2025-11-16", 30), "Phase": "PHASE 3-CODE-FREE ACCESS"},
    {"Task": "Installation SOP", "Start": "2025-12-16", "Finish": add_days("2025-12-16", 7), "Phase": "PHASE 3-CODE-FREE ACCESS"},

    # Phase 4
    {"Task": "Build online Web Manual", "Start": "2025-07-01", "Finish": add_days("2025-07-01", 210), "Phase": "PHASE 4-SYSTEM TRAINING"},
    {"Task": "Asynchronous training", "Start": "2026-01-27", "Finish": add_days("2026-01-27", 14), "Phase": "PHASE 4-SYSTEM TRAINING"},

    # Wrap-up
    {"Task": "Final testing and wrap-up", "Start": "2026-02-10", "Finish": add_days("2026-02-10", 30), "Phase": "WRAP-UP"},
]

# --- Convert to DataFrame ---
df = pd.DataFrame(tasks)

# --- Color settings ---
phase_order = [
    "PHASE 0",
    "PHASE 1-ASSESS ANALYTICS",
    "PHASE 2-NEW ANALYTICS",
    "PHASE 3-CODE-FREE ACCESS",
    "PHASE 4-SYSTEM TRAINING",
    "WRAP-UP"
]
palette = ['#045174', '#d97b1d']  # Alternating blue and orange
phase_colors = {phase: palette[i % len(palette)] for i, phase in enumerate(phase_order)}

# --- Build Plotly Gantt ---
bar_traces = []
y_ticks = []
for i, row in df.iterrows():
    duration = (datetime.strptime(row["Finish"], "%Y-%m-%d") - datetime.strptime(row["Start"], "%Y-%m-%d")).days
    bar_traces.append(go.Bar(
        x=[duration],
        y=[f"row-{i}"],
        base=row["Start"],
        orientation='h',
        name=row["Task"],
        marker=dict(color=phase_colors[row["Phase"]], line=dict(color='black', width=1)),
        hovertemplate=f"<b>{row['Task']}</b><br>{row['Phase']}<br>{row['Start']} → {row['Finish']}<extra></extra>",
        showlegend=False
    ))
    y_ticks.append(f"{row['Task']} • ({row['Phase']})")

fig = go.Figure(data=bar_traces)

# --- Layout ---
fig.update_layout(
    title="BNR Refit Project Timeline",
    barmode='stack',
    height=40 * len(df) + 140,
    xaxis=dict(type='date', tickformat='%b %Y', automargin=True),
    yaxis=dict(
        automargin=True,
        categoryorder='array',
        categoryarray=[f"row-{i}" for i in range(len(df))],
        tickmode='array',
        tickvals=[f"row-{i}" for i in range(len(df))],
        ticktext=y_ticks,
        autorange='reversed'
    ),
    margin=dict(l=260, r=20, t=10, b=40)
)

# --- Export ---
fig.write_html("docs/assets/bnr-gantt2.html", include_plotlyjs="cdn")
print("✅ Gantt chart saved as 'bnr_gantt.html'")
