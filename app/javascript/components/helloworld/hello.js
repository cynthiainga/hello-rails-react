import axios from 'axios';

const API_URL = 'http://localhost:3000/api/v1/helloworld';

const getHelloFromAPI = () => axios.get(API_URL).then((response) => response.data);

export const GET_HELLO = 'GET_HELLO';

export const getHello = (data) => ({
  type: GET_HELLO,
  payload: data,
});

export const getHelloDispatcher = () => async (dispatch) => {
  const hello = await getHelloFromAPI();
  const greet = getHello(hello);
  dispatch(greet);
};

const helloReducer = (state = { loading: true }, action) => {
  switch (action.type) {
    case GET_HELLO: {
      return { greeting: action.payload.greeting };
    }

    default: {
      return state;
    }
  }
};

export default helloReducer;
