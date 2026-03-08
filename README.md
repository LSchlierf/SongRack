# SongRack - Your New Setlist Hepler

## What is SongRack

SongRack lets Bands easily create and manage a repertoire, build setlists via drag-and-drop, and export those to different PDFs.

It features real-time collaboration, an undo history per user, as well as different types of categories users can sort songs with, including color coding.

## Try it out

SongRack is available at [setlist.lschlierf.de](https://setlist.lschlierf.de).

There is a **test user account** already created and populated with songs and setlists, so you can play around without signing up.

The username is `testuser` and the password is `password` (very secure, I know).

Feel free to play around here, but don't save anything important, since the account and all its data is reset to its original state once you close the tab.

If you want to try out the real-time collaboration, you can have a friend log in with the same credentials or simply use another browser window.

## Features

## Technical Details

This Repo is split in two: [frontend](https://github.com/LSchlierf/setlist-front) and [backend](https://github.com/LSchlierf/setlist-back). Both are written in TypeScript.

### Frontend

The frontend uses [React](https://react.dev/) with [Vite](https://vite.dev/) and [Tailwind CSS](https://tailwindcss.com/). Some UI components are from [Shadcn/UI](https://ui.shadcn.com/) with icons from [lucide-react](https://lucide.dev/). PDF exports are generated using [React-pdf](https://react-pdf.org/).

### Backend

The backend is an [Express.js](https://expressjs.com/) Server written in TypeScript. It uses the [ZenStack](https://zenstack.dev/) ORM to connect to a [PostgreSQL](https://www.postgresql.org/) database hosted on [Neon](https://neon.com/). Real-time interactivity is achieved using [Socket.io](https://socket.io/).
