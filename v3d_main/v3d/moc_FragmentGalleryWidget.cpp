/****************************************************************************
** Meta object code from reading C++ file 'FragmentGalleryWidget.h'
**
** Created: Tue Jan 27 16:07:01 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../neuron_annotator/gui/FragmentGalleryWidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'FragmentGalleryWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_FragmentGalleryWidget[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
       9,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: signature, parameters, type, tag, flags
      23,   22,   22,   22, 0x05,

 // slots: signature, parameters, type, tag, flags
      47,   22,   22,   22, 0x0a,
     105,   99,   22,   22, 0x0a,
     125,   22,   22,   22, 0x0a,
     139,   22,   22,   22, 0x0a,
     153,   22,   22,   22, 0x0a,
     166,   22,   22,   22, 0x0a,
     179,   22,   22,   22, 0x0a,
     201,   22,   22,   22, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_FragmentGalleryWidget[] = {
    "FragmentGalleryWidget\0\0scrollPixelChanged(int)\0"
    "scrollToFragment(NeuronSelectionModel::NeuronIndex)\0"
    "pixel\0setScrollPixel(int)\0sortByIndex()\0"
    "sortByColor()\0sortBySize()\0sortByName()\0"
    "updateNameSortTable()\0updateSortTables()\0"
};

const QMetaObject FragmentGalleryWidget::staticMetaObject = {
    { &QAbstractScrollArea::staticMetaObject, qt_meta_stringdata_FragmentGalleryWidget,
      qt_meta_data_FragmentGalleryWidget, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &FragmentGalleryWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *FragmentGalleryWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *FragmentGalleryWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_FragmentGalleryWidget))
        return static_cast<void*>(const_cast< FragmentGalleryWidget*>(this));
    return QAbstractScrollArea::qt_metacast(_clname);
}

int FragmentGalleryWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QAbstractScrollArea::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: scrollPixelChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: scrollToFragment((*reinterpret_cast< NeuronSelectionModel::NeuronIndex(*)>(_a[1]))); break;
        case 2: setScrollPixel((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 3: sortByIndex(); break;
        case 4: sortByColor(); break;
        case 5: sortBySize(); break;
        case 6: sortByName(); break;
        case 7: updateNameSortTable(); break;
        case 8: updateSortTables(); break;
        default: ;
        }
        _id -= 9;
    }
    return _id;
}

// SIGNAL 0
void FragmentGalleryWidget::scrollPixelChanged(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_END_MOC_NAMESPACE
