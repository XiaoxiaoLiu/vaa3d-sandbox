/****************************************************************************
** Meta object code from reading C++ file 'SingleCut.h'
**
** Created: Tue Jan 27 16:07:00 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../neuron_annotator/microCT/SingleCut.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'SingleCut.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_SingleCut[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
      10,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       6,       // signalCount

 // signals: signature, parameters, type, tag, flags
      18,   11,   10,   10, 0x05,
      42,   10,   10,   10, 0x05,
      63,   10,   10,   10, 0x05,
      93,   84,   10,   10, 0x05,
     122,   10,   10,   10, 0x05,
     140,   10,   10,   10, 0x05,

 // slots: signature, parameters, type, tag, flags
     173,  168,   10,   10, 0x0a,
     203,   10,   10,   10, 0x0a,
     226,   10,   10,   10, 0x0a,
     250,   10,   10,   10, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_SingleCut[] = {
    "SingleCut\0\0doShow\0cutGuideRequested(bool)\0"
    "clipPlaneRequested()\0keepPlaneRequested()\0"
    "rotation\0rotationAdjusted(Rotation3D)\0"
    "orientRequested()\0currentWidgetRequested(int)\0"
    "text\0on_axisBox_activated(QString)\0"
    "on_cutButton_clicked()\0on_edgeButton_clicked()\0"
    "on_orientButton_clicked()\0"
};

const QMetaObject SingleCut::staticMetaObject = {
    { &QWidget::staticMetaObject, qt_meta_stringdata_SingleCut,
      qt_meta_data_SingleCut, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &SingleCut::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *SingleCut::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *SingleCut::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_SingleCut))
        return static_cast<void*>(const_cast< SingleCut*>(this));
    return QWidget::qt_metacast(_clname);
}

int SingleCut::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: cutGuideRequested((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 1: clipPlaneRequested(); break;
        case 2: keepPlaneRequested(); break;
        case 3: rotationAdjusted((*reinterpret_cast< Rotation3D(*)>(_a[1]))); break;
        case 4: orientRequested(); break;
        case 5: currentWidgetRequested((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: on_axisBox_activated((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 7: on_cutButton_clicked(); break;
        case 8: on_edgeButton_clicked(); break;
        case 9: on_orientButton_clicked(); break;
        default: ;
        }
        _id -= 10;
    }
    return _id;
}

// SIGNAL 0
void SingleCut::cutGuideRequested(bool _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void SingleCut::clipPlaneRequested()
{
    QMetaObject::activate(this, &staticMetaObject, 1, 0);
}

// SIGNAL 2
void SingleCut::keepPlaneRequested()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}

// SIGNAL 3
void SingleCut::rotationAdjusted(Rotation3D _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void SingleCut::orientRequested()
{
    QMetaObject::activate(this, &staticMetaObject, 4, 0);
}

// SIGNAL 5
void SingleCut::currentWidgetRequested(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}
QT_END_MOC_NAMESPACE
