/****************************************************************************
** Meta object code from reading C++ file 'NaZStackWidget.h'
**
** Created: Tue Jan 27 16:07:00 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../neuron_annotator/gui/NaZStackWidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'NaZStackWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_NaZStackWidget[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
      20,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       6,       // signalCount

 // signals: signature, parameters, type, tag, flags
      16,   15,   15,   15, 0x05,
      38,   15,   15,   15, 0x05,
      92,   84,   15,   15, 0x05,
     121,  115,   15,   15, 0x05,
     164,  148,   15,   15, 0x05,
     197,   15,   15,   15, 0x05,

 // slots: signature, parameters, type, tag, flags
     220,   15,   15,   15, 0x0a,
     235,   15,   15,   15, 0x0a,
     250,   15,   15,   15, 0x0a,
     266,   15,   15,   15, 0x0a,
     284,   15,   15,   15, 0x0a,
     301,   15,   15,   15, 0x0a,
     327,  318,   15,   15, 0x0a,
     354,   84,  349,   15, 0x0a,
     373,  115,   15,   15, 0x0a,
     396,   15,   15,   15, 0x0a,
     421,   15,   15,   15, 0x0a,
     437,   15,   15,   15, 0x0a,
     471,  461,   15,   15, 0x09,
     508,   15,   15,   15, 0x09,

       0        // eod
};

static const char qt_meta_stringdata_NaZStackWidget[] = {
    "NaZStackWidget\0\0curZsliceChanged(int)\0"
    "curColorChannelChanged(NaZStackWidget::Color)\0"
    "boxSize\0hdrBoxSizeChanged(int)\0state\0"
    "changedHDRCheckState(bool)\0channel,min,max\0"
    "hdrRangeChanged(int,qreal,qreal)\0"
    "statusMessage(QString)\0do_HDRfilter()\0"
    "updatePixmap()\0setRedChannel()\0"
    "setGreenChannel()\0setBlueChannel()\0"
    "setNc82Channel()\0sliceNum\0"
    "setCurrentZSlice(int)\0bool\0"
    "setHdrBoxSize(int)\0setHDRCheckState(bool)\0"
    "updateVolumeParameters()\0updateHDRView()\0"
    "showContextMenu(QPoint)\0dx,dy,pos\0"
    "onMouseLeftDragEvent(int,int,QPoint)\0"
    "resetHdrBox()\0"
};

const QMetaObject NaZStackWidget::staticMetaObject = {
    { &Na2DViewer::staticMetaObject, qt_meta_stringdata_NaZStackWidget,
      qt_meta_data_NaZStackWidget, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &NaZStackWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *NaZStackWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *NaZStackWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_NaZStackWidget))
        return static_cast<void*>(const_cast< NaZStackWidget*>(this));
    return Na2DViewer::qt_metacast(_clname);
}

int NaZStackWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = Na2DViewer::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: curZsliceChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: curColorChannelChanged((*reinterpret_cast< NaZStackWidget::Color(*)>(_a[1]))); break;
        case 2: hdrBoxSizeChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: changedHDRCheckState((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 4: hdrRangeChanged((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< qreal(*)>(_a[2])),(*reinterpret_cast< qreal(*)>(_a[3]))); break;
        case 5: statusMessage((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 6: do_HDRfilter(); break;
        case 7: updatePixmap(); break;
        case 8: setRedChannel(); break;
        case 9: setGreenChannel(); break;
        case 10: setBlueChannel(); break;
        case 11: setNc82Channel(); break;
        case 12: setCurrentZSlice((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 13: { bool _r = setHdrBoxSize((*reinterpret_cast< int(*)>(_a[1])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 14: setHDRCheckState((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 15: updateVolumeParameters(); break;
        case 16: updateHDRView(); break;
        case 17: showContextMenu((*reinterpret_cast< QPoint(*)>(_a[1]))); break;
        case 18: onMouseLeftDragEvent((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< QPoint(*)>(_a[3]))); break;
        case 19: resetHdrBox(); break;
        default: ;
        }
        _id -= 20;
    }
    return _id;
}

// SIGNAL 0
void NaZStackWidget::curZsliceChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void NaZStackWidget::curColorChannelChanged(NaZStackWidget::Color _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void NaZStackWidget::hdrBoxSizeChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void NaZStackWidget::changedHDRCheckState(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void NaZStackWidget::hdrRangeChanged(int _t1, qreal _t2, qreal _t3)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void NaZStackWidget::statusMessage(const QString & _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}
QT_END_MOC_NAMESPACE
