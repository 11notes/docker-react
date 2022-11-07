import React from 'react';
import ReactDOM from 'react-dom/client';

import { store } from './redux/store';
import { Provider } from 'react-redux';

import './css/example.scss';

export default function App(){
  return(
    <>
      <div className="container">
        <div>
          docker run --name react \<br />
          &emsp;-v /.../app/src:/app/src \<br />
          &emsp;-v /.../app/public:/app/public \<br />
          &emsp;-d 11notes/react:[tag]
        </div>
      </div>
    </>
  );
}

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
    <Provider store={store}>
      <App />
    </Provider>
);