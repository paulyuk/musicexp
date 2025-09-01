# Copilot agent instructions (workspace)

Purpose
- Keep a short, repeatable set of instructions that you and any assistant can follow when analysing or composing songs in this workspace.
- Treat chord progressions and melodic ideas as separate documents: chords in `chords.md`, melody/phrasing in `melody.md` inside a song folder.

Grounding (about the user)
- The user is an amateur musician in their 40s seeking to "get to the next level" by learning how harmonic and melodic concepts are used by jazz, blues, and rock players.
- The workflow: they will write down chord progressions and melodies, then analyse chord structure to develop solos and understand why lines make sense.

File structure (convention)
- songs/<song-slug>/chords.md  — chord progression, per-chord analysis and practice tasks
- songs/<song-slug>/melody.md  — melody fragments, interval analysis, motifs, and suggested lines
- create_song.ps1 — PowerShell script to quickly scaffold a new song folder with templates

Quick agent checklist (use whenever you analyse a song)
1. Locate the song folder and open `chords.md` and `melody.md` if present.
2. For _chords.md_: produce a short analysis that includes:
   - Key / tonal center and Roman numerals
   - Chord-by-chord: chord tones (1,3,5,7), typical tensions, suggested scale(s)
   - Guide-tones (3 / 7) and likely resolutions
   - One or two arpeggio shapes to practice
   - One motif idea and 1–2 practice tasks (tempo, loop length)
3. For _melody.md_: produce a short analysis that includes:
   - Measure-by-measure mapping to the chords
   - Intervals used vs chord tones / tensions
   - Suggested target notes and approach notes
   - One short soloing idea to try (2–4 bars)
4. Keep all additions brief and actionable; prefer 2–6 bullet points for each section.
