/****************************************************************************
** Meta object code from reading C++ file 'GalleryMipImages.h'
**
** Created: Tue Jan 27 16:06:59 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../neuron_annotator/data_model/GalleryMipImages.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'GalleryMipImages.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_GalleryMipImages[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      18,   17,   17,   17, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_GalleryMipImages[] = {
    "GalleryMipImages\0\0update()\0"
};

const QMetaObject GalleryMipImages::staticMetaObject = {
    { &NaLockableData::staticMetaObject, qt_meta_stringdata_GalleryMipImages,
      qt_meta_data_GalleryMipImages, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &GalleryMipImages::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *GalleryMipImages::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *GalleryMipImages::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_GalleryMipImages))
        return static_cast<void*>(const_cast< GalleryMipImages*>(this));
    return NaLockableData::qt_metacast(_clname);
}

int GalleryMipImages::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = NaLockableData::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: update(); break;
        default: ;
        }
        _id -= 1;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
