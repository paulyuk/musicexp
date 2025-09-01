Songs folder conventions

Each song is stored in its own folder under `songs/`.

Required files inside each song folder:
- `chords.md` — chord progression, Roman numerals, per-chord analysis, and practice tasks.
- `melody.md` — melody fragments, transcriptions, interval analysis and suggested solos.

Create new song folder:
- Run `.	ools\create_song.ps1 -Name "My Song Title"` (or use the included `create_song.ps1` helper, if present).
- Or manually create `songs/my-song-title/` and add `chords.md` and `melody.md`.

Keep files short and actionable; use the templates in `copilot_agent_instructions.md` to fill them.
