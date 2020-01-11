.class public Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;
.super Ljava/lang/Object;
.source "UIListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/qq/tencent/UIListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApiTask"
.end annotation


# instance fields
.field public mListener:Lcom/umeng/qq/tencent/IUiListener;

.field public mRequestCode:I

.field final synthetic this$0:Lcom/umeng/qq/tencent/UIListenerManager;


# direct methods
.method public constructor <init>(Lcom/umeng/qq/tencent/UIListenerManager;ILcom/umeng/qq/tencent/IUiListener;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;->this$0:Lcom/umeng/qq/tencent/UIListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p2, p0, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;->mRequestCode:I

    .line 236
    iput-object p3, p0, Lcom/umeng/qq/tencent/UIListenerManager$ApiTask;->mListener:Lcom/umeng/qq/tencent/IUiListener;

    return-void
.end method
