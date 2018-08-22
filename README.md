# README

An API used to communicate with TCGPlayer to grab pricing and image information. There is only one endpoint that serializes the card's name, price, and image link. You can find a live version [here](https://mtginventory-api.herokuapp.com/api/v1/) but there isn't much to see without credentials!

To use this API you must have a client ID and key which you can get from me. The credentials must then be passed through the headers in the form of api-id and api-key to get a useful response back.

## Endpoints

### /api/v1/info?name={card name}

#### Example:
```
GET to https://mtginventory-api.herokuapp.com/api/v1/info?name=Food Chain

{
    "name": "Food Chain",
    "image": "https://6d4be195623157e28848-7697ece4918e0a73861de0eb37d08968.ssl.cf1.rackcdn.com/6529_200w.jpg",
    "price": 48.54
}
```
