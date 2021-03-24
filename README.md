# QT-Gauge--Speedometer

<h6> Custom Gauge Widget for Qt QWidget and QMainWindow </h1>

<p> A graphical gauge for qt/c++ applications </p>
<p> This gauge doesn't use any static picture or wallpaper, rather it is rendered at C++ Runtime by 'drawing'. This allows for dynamic changes to the instrument's attributes. </p>
<p> Extensibile widget can be adapted for use as Compass , Altimeter , etc... </p>
<h5> How to use this widget: </h5> 
<ul>
<li> First use header and source file in your project </li>
<li> Instantiate QcGaugeWidget object (this will run necessary initialization) </li>
<li> Set key attributes for your application </li>
<li> Add widget to layout (unless widget is already present in UI form)</li>
<li> See example below: </li>
</ul>
<h5> Add to header (.h) file: </h5>
<pre>
 #include "qcgaugewidget.h"
 QcGaugeWidget * mSpeedGauge;
</pre>
<h5> Suggested initialization in .cpp file (change colours, units etc. as desired) </h5>
<pre>
    mSpeedGauge = new QcGaugeWidget();          // Instantiate and call constructor    
    mSpeedGauge->setColour(Qt::cyan);           // Set accent colours        
    mSpeedGauge->titleLabel->setText("km/h");   // Title or Units
    mSpeedGauge->needle->setValueRange(0,80);   // Displayable range of values
    ui->verticalLayout->addWidget(mSpeedGauge); // Add widget to layout
</pre>

<p> This is building on other's work to make the widget more accessible and extensible.
<p> See parent project: https://github.com/Berrima/Qt-custom-gauge-widget </p>
