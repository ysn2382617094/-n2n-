.class public Lcom/umeng/facebook/messenger/MessengerThreadParams;
.super Ljava/lang/Object;
.source "MessengerThreadParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/messenger/MessengerThreadParams$Origin;
    }
.end annotation


# instance fields
.field public final metadata:Ljava/lang/String;

.field public final origin:Lcom/umeng/facebook/messenger/MessengerThreadParams$Origin;

.field public final participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final threadToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/umeng/facebook/messenger/MessengerThreadParams$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/facebook/messenger/MessengerThreadParams$Origin;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/umeng/facebook/messenger/MessengerThreadParams;->threadToken:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/umeng/facebook/messenger/MessengerThreadParams;->metadata:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/umeng/facebook/messenger/MessengerThreadParams;->participants:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/umeng/facebook/messenger/MessengerThreadParams;->origin:Lcom/umeng/facebook/messenger/MessengerThreadParams$Origin;

    return-void
.end method
