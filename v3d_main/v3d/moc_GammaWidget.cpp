/****************************************************************************
** Meta object code from reading C++ file 'GammaWidget.h'
**
** Created: Tue Jan 27 16:07:00 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../neuron_annotator/gui/GammaWidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'GammaWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_GammaWidget[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      19,   13,   12,   12, 0x05,

 // slots: signature, parameters, type, tag, flags
      49,   13,   12,   12, 0x0a,
      81,   75,   12,   12, 0x0a,
     129,  120,   12,   12, 0x0a,
     163,   12,   12,   12, 0x0a,
     171,   13,   12,   12, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_GammaWidget[] = {
    "GammaWidget\0\0gamma\0gammaBrightnessChanged(qreal)\0"
    "setGammaBrightness(qreal)\0value\0"
    "on_gamma_lineEdit_textChanged(QString)\0"
    "gammaInt\0on_gamma_slider_valueChanged(int)\0"
    "reset()\0updateGammaLineEdit(qreal)\0"
};

const QMetaObject GammaWidget::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_GammaWidget,
      qt_meta_data_GammaWidget, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &GammaWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *GammaWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *GammaWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_GammaWidget))
        return static_cast<void*>(const_cast< GammaWidget*>(this));
    if (!strcmp(_clname, "Ui::GammaWidget"))
        return static_cast< Ui::GammaWidget*>(const_cast< GammaWidget*>(this));
    return QWidget::qt_metacast(_clname);
}

int GammaWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: gammaBrightnessChanged((*reinterpret_cast< qreal(*)>(_a[1]))); break;
        case 1: setGammaBrightness((*reinterpret_cast< qreal(*)>(_a[1]))); break;
        case 2: on_gamma_lineEdit_textChanged((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 3: on_gamma_slider_valueChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 4: reset(); break;
        case 5: updateGammaLineEdit((*reinterpret_cast< qreal(*)>(_a[1]))); break;
        default: ;
        }
        _id -= 6;
    }
    return _id;
}

// SIGNAL 0
void GammaWidget::gammaBrightnessChanged(qreal _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE