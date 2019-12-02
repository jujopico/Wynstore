import React, { Component } from 'react';

const CAROUSEL_IMAGES = [
  "https://wynstore-assets.herokuapp.com/images/Bluebg_1.png",
  "https://wynstore-assets.herokuapp.com/images/Bluebg_2.png",
  "https://wynstore-assets.herokuapp.com/images/Bluebg_3.png",
  "https://wynstore-assets.herokuapp.com/images/Bluebg_4.png",
  "https://wynstore-assets.herokuapp.com/images/Bluebg_5.png",
  "https://wynstore-assets.herokuapp.com/images/Bluebg_6.png",
]

class CarouselContainer extends Component {

  state = { startIndex: 0, lastIndex: 4, activeImages: CAROUSEL_IMAGES.slice(0, 4) }

  handleNavigation = direction => () => this.setState(prevState => ({ startIndex: prevState.startIndex + direction, lastIndex: prevState.lastIndex + direction  }))

  render() {
    const { startIndex, lastIndex } = this.state;

    return (
      <div className="carousel-container">
        <button disabled={startIndex <= 0} onClick={this.handleNavigation(-1)}>Prev</button>
        <div className="carousel-images">
          {CAROUSEL_IMAGES.slice(startIndex, lastIndex).map(url => (
            <div className="carousel-image-container">
              <img className="carousel-image" src={url} alt="carousel-image" />
            </div>
          ))}
        </div>
        <button disabled={lastIndex >=  CAROUSEL_IMAGES.length} onClick={this.handleNavigation(1)}>Next</button>
      </div>
    )
  }
}

export default CarouselContainer;

