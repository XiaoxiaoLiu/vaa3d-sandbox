/****************************************************************************
** Meta object code from reading C++ file 'AnnotationWidget.h'
**
** Created: Tue Jan 27 16:07:01 2015
**      by: The Qt Meta Object Compiler version 62 (Qt 4.7.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../neuron_annotator/gui/AnnotationWidget.h"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'AnnotationWidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 62
#error "This file was generated using the moc from 4.7.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_AnnotationWidget[] = {

 // content:
       5,       // revision
       0,       // classname
       0,    0, // classinfo
      35,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       3,       // signalCount

 // signals: signature, parameters, type, tag, flags
      25,   18,   17,   17, 0x05,
      61,   55,   17,   17, 0x05,
      81,   17,   17,   17, 0x05,

 // slots: signature, parameters, type, tag, flags
     101,   17,   17,   17, 0x0a,
     126,  117,   17,   17, 0x0a,
     150,   17,   17,   17, 0x0a,
     193,  175,   17,   17, 0x0a,
     235,   17,   17,   17, 0x0a,
     284,  258,   17,   17, 0x0a,
     343,  327,   17,   17, 0x2a,
     415,  381,   17,   17, 0x0a,
     484,  471,   17,   17, 0x0a,
     519,  512,   17,   17, 0x0a,
     548,   17,   17,   17, 0x0a,
     573,  565,   17,   17, 0x0a,
     593,   17,   17,   17, 0x0a,
     613,   17,   17,   17, 0x0a,
     627,   55,   17,   17, 0x0a,
     666,   55,   17,   17, 0x0a,
     722,  706,   17,   17, 0x0a,
     801,  790,   17,   17, 0x0a,
     833,   18,   17,   17, 0x0a,
     863,   18,   17,   17, 0x0a,
     907,  891,   17,   17, 0x0a,
     949,  940,   17,   17, 0x0a,
     992,  974,   17,   17, 0x0a,
    1022,   55,   17,   17, 0x0a,
    1040,   17,   17,   17, 0x0a,
    1066, 1058,   17,   17, 0x08,
    1109, 1103,   17,   17, 0x08,
    1140, 1058,   17,   17, 0x08,
    1177, 1103,   17,   17, 0x08,
    1208, 1058,   17,   17, 0x08,
    1241, 1103,   17,   17, 0x08,
    1268,   18,   17,   17, 0x08,

       0        // eod
};

static const char qt_meta_stringdata_AnnotationWidget[] = {
    "AnnotationWidget\0\0entity\0"
    "entitySelected(const Entity*)\0index\0"
    "neuronSelected(int)\0neuronsDeselected()\0"
    "closeOntology()\0ontology\0"
    "openOntology(Ontology*)\0"
    "closeAnnotationSession()\0annotationSession\0"
    "openAnnotationSession(AnnotationSession*)\0"
    "closeAnnotatedBranch()\0annotatedBranch,openStack\0"
    "openAnnotatedBranch(AnnotatedBranch*,bool)\0"
    "annotatedBranch\0openAnnotatedBranch(AnnotatedBranch*)\0"
    "entityId,annotations,userColorMap\0"
    "updateAnnotations(qint64,AnnotationList*,UserColorMap*)\0"
    "errorMessage\0communicationError(QString)\0"
    "sample\0updateCurrentSample(Entity*)\0"
    "consoleConnect()\0retries\0consoleConnect(int)\0"
    "consoleDisconnect()\0consoleSync()\0"
    "ontologyTreeDoubleClicked(QModelIndex)\0"
    "annotatedBranchTreeClicked(QModelIndex)\0"
    "term,parentTerm\0"
    "annotateSelectedEntityWithOntologyTerm(const Entity*,const Entity*)\0"
    "annotation\0removeAnnotation(const Entity*)\0"
    "selectFragment(const Entity*)\0"
    "selectEntity(const Entity*)\0entity,external\0"
    "selectEntity(const Entity*,bool)\0"
    "entityId\0selectEntityById(qint64)\0"
    "entityId,external\0selectEntityById(qint64,bool)\0"
    "selectNeuron(int)\0deselectNeurons()\0"
    "results\0createAnnotationResults(const void*)\0"
    "error\0createAnnotationError(QString)\0"
    "removeAnnotationResults(const void*)\0"
    "removeAnnotationError(QString)\0"
    "selectEntityResults(const void*)\0"
    "selectEntityError(QString)\0"
    "entityWasSelected(const Entity*)\0"
};

const QMetaObject AnnotationWidget::staticMetaObject = {
    { &QFrame::staticMetaObject, qt_meta_stringdata_AnnotationWidget,
      qt_meta_data_AnnotationWidget, 0 }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &AnnotationWidget::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *AnnotationWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *AnnotationWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_AnnotationWidget))
        return static_cast<void*>(const_cast< AnnotationWidget*>(this));
    return QFrame::qt_metacast(_clname);
}

int AnnotationWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QFrame::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        switch (_id) {
        case 0: entitySelected((*reinterpret_cast< const Entity*(*)>(_a[1]))); break;
        case 1: neuronSelected((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 2: neuronsDeselected(); break;
        case 3: closeOntology(); break;
        case 4: openOntology((*reinterpret_cast< Ontology*(*)>(_a[1]))); break;
        case 5: closeAnnotationSession(); break;
        case 6: openAnnotationSession((*reinterpret_cast< AnnotationSession*(*)>(_a[1]))); break;
        case 7: closeAnnotatedBranch(); break;
        case 8: openAnnotatedBranch((*reinterpret_cast< AnnotatedBranch*(*)>(_a[1])),(*reinterpret_cast< bool(*)>(_a[2]))); break;
        case 9: openAnnotatedBranch((*reinterpret_cast< AnnotatedBranch*(*)>(_a[1]))); break;
        case 10: updateAnnotations((*reinterpret_cast< qint64(*)>(_a[1])),(*reinterpret_cast< AnnotationList*(*)>(_a[2])),(*reinterpret_cast< UserColorMap*(*)>(_a[3]))); break;
        case 11: communicationError((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 12: updateCurrentSample((*reinterpret_cast< Entity*(*)>(_a[1]))); break;
        case 13: consoleConnect(); break;
        case 14: consoleConnect((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 15: consoleDisconnect(); break;
        case 16: consoleSync(); break;
        case 17: ontologyTreeDoubleClicked((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 18: annotatedBranchTreeClicked((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 19: annotateSelectedEntityWithOntologyTerm((*reinterpret_cast< const Entity*(*)>(_a[1])),(*reinterpret_cast< const Entity*(*)>(_a[2]))); break;
        case 20: removeAnnotation((*reinterpret_cast< const Entity*(*)>(_a[1]))); break;
        case 21: selectFragment((*reinterpret_cast< const Entity*(*)>(_a[1]))); break;
        case 22: selectEntity((*reinterpret_cast< const Entity*(*)>(_a[1]))); break;
        case 23: selectEntity((*reinterpret_cast< const Entity*(*)>(_a[1])),(*reinterpret_cast< const bool(*)>(_a[2]))); break;
        case 24: selectEntityById((*reinterpret_cast< const qint64(*)>(_a[1]))); break;
        case 25: selectEntityById((*reinterpret_cast< const qint64(*)>(_a[1])),(*reinterpret_cast< const bool(*)>(_a[2]))); break;
        case 26: selectNeuron((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 27: deselectNeurons(); break;
        case 28: createAnnotationResults((*reinterpret_cast< const void*(*)>(_a[1]))); break;
        case 29: createAnnotationError((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 30: removeAnnotationResults((*reinterpret_cast< const void*(*)>(_a[1]))); break;
        case 31: removeAnnotationError((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 32: selectEntityResults((*reinterpret_cast< const void*(*)>(_a[1]))); break;
        case 33: selectEntityError((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 34: entityWasSelected((*reinterpret_cast< const Entity*(*)>(_a[1]))); break;
        default: ;
        }
        _id -= 35;
    }
    return _id;
}

// SIGNAL 0
void AnnotationWidget::entitySelected(const Entity * _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void AnnotationWidget::neuronSelected(int _t1)
{
    void *_a[] = { 0, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void AnnotationWidget::neuronsDeselected()
{
    QMetaObject::activate(this, &staticMetaObject, 2, 0);
}
QT_END_MOC_NAMESPACE
