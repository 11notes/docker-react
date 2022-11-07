import { createSlice } from "@reduxjs/toolkit";
import initialState from "./initial-state";

export const slice = createSlice({
    name: 'example',
    initialState, 
    reducers:{
        react:(state, action) => {
            state.react = action.playload.status;
        },
    }
});

export const { status } = slice.actions;
export default slice.reducer;