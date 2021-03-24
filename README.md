# QT-Gauge---Speedometer

<h6> Custom Gauge Widget for Qt QWidget and QMainWindows </h1>

<p> This is a graphical gauge for qt/c++ applications </p>
<p> With this gauge we don't use any picture or wallpaper, it is rendered at C++ Runtime by drawing </p>
<p> Extensibile widget can be adapted for use as Compass , Altimeter , etc... </p>
<h5> How to use this widget: </h5> 
<ul>
<li> First use header and source file in your project </li>
<li> After That add vertical layout to your ui file </li>
<li> In the End Use This code To Start </li>
</ul>
<h5> Add This to header (.h) file </h5>
<pre>
 #include "qcgaugewidget.h"
 QcGaugeWidget * mSpeedGauge;
 QcNeedleItem *mSpeedNeedle;
</pre>
<h5> Suggested initialization in .cpp file (change colours, units etc. as desired) </h5>
<pre>
    mSpeedGauge = new QcGaugeWidget;
    mSpeedGauge->addBackground(99);
    // this will add side color to gauge
    QcBackgroundItem *bkg1 = mSpeedGauge->addBackground(92);
    bkg1->clearColors();
    bkg1->addColor(0.1,Qt::black);
    bkg1->addColor(1.0,Qt::white);
    QcBackgroundItem *bkg2 = mSpeedGauge->addBackground(88);
    bkg2->clearColors();
    // this two line below will set background color of gauge
    bkg2->addColor(0.1,Qt::gray);
    bkg2->addColor(1.0,Qt::darkGray);
    mSpeedGauge->addArc(55);
    mSpeedGauge->addDegrees(65)->setValueRange(0,120);
    // this will add color red-green color band
    mSpeedGauge->addColorBand(50);
    // add value rage
    mSpeedGauge->addValues(80)->setValueRange(0, 80);
    // set gauge title
    mSpeedGauge->addLabel(70)->setText("Km/h");
    QcLabelItem *lab = mSpeedGauge->addLabel(40);
    lab->setText("0");
    mSpeedNeedle = mSpeedGauge->addNeedle(60);
    // add label 
    mSpeedNeedle->setLabel(lab);
    // set needle color 
    mSpeedNeedle->setColor(Qt::white);
    // add range for your gauge => it should be just like the gauge range 
    mSpeedNeedle->setValueRange(0,80);
    mSpeedGauge->addBackground(7);
    // add some shadow like glass
    mSpeedGauge->addGlass(88);
    // add this to your vertical layout
    ui->verticalLayout->addWidget(mSpeedGauge);
</pre>

<p> Parent project: https://github.com/Berrima/Qt-custom-gauge-widget </p>
