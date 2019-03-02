// @station-color: darken(saturate(@secondary-fill, 25%), 40%);
@station-color: lighten(@airtransport, 10%);
@station-text: @station-color;

.stations {
  [railway = 'subway_entrance'][zoom >= 17] {
    marker-file: url('symbols/noun_Subway_4174_000000.svg');
    marker-placement: interior;
    marker-fill: @station-color;
    marker-clip: false;
    marker-width: 15;
    marker-line-color: black;
    marker-line-width: 1.0;
    // [zoom >= 19] {
      text-name: [ref];
      text-face-name: @book-fonts;
      text-size: 10;
      text-fill: @transportation-icon;
      text-dy: 11;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: 0;
      text-placement: interior;
    // }
  }

  [railway = 'station'][zoom >= 12] {
    marker-file: url('symbols/passenger_train.svg');
    marker-placement: interior;
    marker-fill: @station-color;
    marker-clip: false;
    marker-width: 15;
    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: 10;
      text-fill: @station-text;
      text-dy: 11;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: 30; // 3 em
      text-line-spacing: -1.5; // -0.15 em
      text-placement: interior;
    }
    [zoom >= 15] {
      text-size: 11;
      text-wrap-width: 33; // 3 em
      text-line-spacing: -1.65; // -0.15 em
      text-dy: 13;
    }
  }

  [railway = 'halt'] {
    [zoom >= 13] {
      marker-file: url('symbols/passenger_train.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-clip: false;
      marker-width: 15;
    }
    [zoom >= 15] {
      text-name: "[name]";
      text-face-name: @bold-fonts;
      text-size: @standard-font-size;
      text-fill: @station-text;
      text-dy: 13;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-placement: interior;
    }
  }

  [aerialway = 'station']::aerialway {
    [zoom >= 13] {
      marker-file: url('symbols/svgrepo.com-cable_car.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 12;
      marker-clip: false;
    }
    [zoom >= 15] {
      marker-width: 6;
    }
    [zoom >= 14] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: @standard-font-size;
      text-fill: @station-text;
      text-dy: 10;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-placement: interior;
    }
  }

  [railway = 'tram_stop'] {
    [zoom >= 13] {
      marker-file: url('symbols/svgrepo.com-tram.svg');
      marker-placement: interior;
      marker-fill: @station-color;
      marker-width: 12;
    }
    [zoom >= 16] {
      text-name: "[name]";
      text-face-name: @book-fonts;
      text-size: @standard-font-size;
      text-fill: @station-text;
      text-dy: 10;
      text-halo-radius: @standard-halo-radius;
      text-halo-fill: @standard-halo-fill;
      text-wrap-width: @standard-wrap-width;
      text-line-spacing: @standard-line-spacing-size;
      text-placement: interior;
    }
  }
}
