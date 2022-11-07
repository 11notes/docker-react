import { configureStore } from '@reduxjs/toolkit';
import sliceExample from './example/slice';

export const store = configureStore({
    reducer:{
        exampe:sliceExample
    }
});