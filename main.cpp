#include <QtGui/QApplication>
#include <QtDebug>

#include <QDeclarativeView>
#include <QDeclarativeContext>

#include <QOrganizerManager>
#include <QOrganizerAbstractRequest>

QTM_USE_NAMESPACE

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QDeclarativeView view;


    //view.setSource(QUrl("qrc:/qml/qmlcalendar/main.qml"));
    //view.show();

    //QObject::connect(view.engine(), SIGNAL(quit()), &a, SLOT(quit()));
    qDebug() << QOrganizerManager::availableManagers() << "\n";
    qRegisterMetaType<QOrganizerAbstractRequest::State>("QOrganizerAbstractRequest::State");

                qRegisterMetaType<QList<QOrganizerItemId> >("QList<QOrganizerItemId>");

                qRegisterMetaType<QList<QOrganizerCollectionId> >("QList<QOrganizerCollectionId>");

                //qRegisterMetaType<QAbstractSocket::SocketState>("QAbstractSocket::SocketState");

                //qRegisterMetaType<QList<QPair<QOrganizerItemId, QOrganizerManager::Operation> > >("QList<QPair<QOrganizerItemId,QOrganizerManager::Operation> >");

//                qRegisterMetaType<QList<QPair<QOrganizerCollectionId, QOrganizerManager::Operation> > >("QList<QPair<QOrganizerCollectionId,QOrganizerManager::Operation> >");
                qRegisterMetaType<QOrganizerAbstractRequest::State>("QOrganizerAbstractRequest::State");


                qRegisterMetaType<QOrganizerItemId>("QOrganizerItemId");

                qRegisterMetaType<QOrganizerCollectionId>("QOrganizerCollectionId");
//        view.setSource(QUrl("qrc:/qml/qmlcalendar/main.qml"));
        view.setSource(QUrl("/opt/qmlcalendar/qml/qmlcalendar/main.qml"));
        view.setResizeMode(QDeclarativeView::SizeRootObjectToView);
        view.showFullScreen();
        view.setAttribute(Qt::WA_OpaquePaintEvent);
        view.setAttribute(Qt::WA_NoSystemBackground);
        view.viewport()->setAttribute(Qt::WA_OpaquePaintEvent);
        view.viewport()->setAttribute(Qt::WA_NoSystemBackground);


    return app.exec();
}
