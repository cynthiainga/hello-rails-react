import { combineReducers, applyMiddleware } from 'redux';
import { configureStore } from '@reduxjs/toolkit';

import helloReducer from './helloworld/hello';

const reducer = combineReducers({
  helloReducer,
});

const store = configureStore({
  reducer: reducer,
});

export default store;
