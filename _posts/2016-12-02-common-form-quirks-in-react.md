---
layout: post
title: Common Form Quirks in React
dateL 2016-12-02 9:55
---

After using React for many web projects both big and small, there were a handful of issues with form fields that needed to be addressed. These problems specifically relate to using *controlled* inputs where the state is entirely in React and synced to the dom.

## 1. Autofill

Most browsers have some sort of autofill capability, however the implementation can vary greatly. There are some autofill implementations that don't fire any DOM events at all, thus React has no idea that it needs to update the state of the form and thinks the fields are still empty. We've had good success using [Vanilla Autofill Event](https://github.com/iamjoetaylor/vanilla-autofill-event) as a way to sync those autofill changes back into React state.

## 2. Dropdowns

If using standards `<select>` elements in React, the dropdown will display the first option in the dropdown. Most users will see this as being a selected value, but in React's case, the value in state will sitll be `null` or `''` until the user changes the value (triggering a change event). An easy way to handle this is to have an empty option as the first option in the dropdown. This way users *must* change the dropdown value and properly trigger that change event.

## Conclusion

It seems the root to most of these problems is that the form's DOM values get out of sync with React's state. This can be because of events not firing or perhaps the browser providing defaults. The best form of solution would seem to be a way to selectively sync the DOM's form state back into React. A two-way binding so-to-speak.
