.class Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;
.super Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/facebook/share/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/facebook/internal/FacebookDialogBase<",
        "Lcom/umeng/facebook/share/model/ShareContent;",
        "Lcom/umeng/facebook/share/Sharer$Result;",
        ">.ModeHandler;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/facebook/share/widget/MessageDialog;


# direct methods
.method private constructor <init>(Lcom/umeng/facebook/share/widget/MessageDialog;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;->this$0:Lcom/umeng/facebook/share/widget/MessageDialog;

    invoke-direct {p0, p1}, Lcom/umeng/facebook/internal/FacebookDialogBase$ModeHandler;-><init>(Lcom/umeng/facebook/internal/FacebookDialogBase;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/facebook/share/widget/MessageDialog;Lcom/umeng/facebook/share/widget/MessageDialog$1;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;-><init>(Lcom/umeng/facebook/share/widget/MessageDialog;)V

    return-void
.end method


# virtual methods
.method public canShow(Lcom/umeng/facebook/share/model/ShareContent;Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/share/widget/MessageDialog;->canShow(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic canShow(Ljava/lang/Object;Z)Z
    .locals 0

    .line 175
    check-cast p1, Lcom/umeng/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;->canShow(Lcom/umeng/facebook/share/model/ShareContent;Z)Z

    move-result p1

    return p1
.end method

.method public createAppCall(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/internal/AppCall;
    .locals 3

    .line 183
    invoke-static {p1}, Lcom/umeng/facebook/share/internal/ShareContentValidation;->validateForMessage(Lcom/umeng/facebook/share/model/ShareContent;)V

    .line 185
    iget-object v0, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;->this$0:Lcom/umeng/facebook/share/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/umeng/facebook/share/widget/MessageDialog;->createBaseAppCall()Lcom/umeng/facebook/internal/AppCall;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;->this$0:Lcom/umeng/facebook/share/widget/MessageDialog;

    invoke-virtual {v1}, Lcom/umeng/facebook/share/widget/MessageDialog;->getShouldFailOnDataError()Z

    move-result v1

    .line 188
    new-instance v2, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;-><init>(Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;Lcom/umeng/facebook/internal/AppCall;Lcom/umeng/facebook/share/model/ShareContent;Z)V

    .line 207
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/share/widget/MessageDialog;->access$100(Ljava/lang/Class;)Lcom/umeng/facebook/internal/DialogFeature;

    move-result-object p1

    .line 188
    invoke-static {v0, v2, p1}, Lcom/umeng/facebook/internal/DialogPresenter;->setupAppCallForNativeDialog(Lcom/umeng/facebook/internal/AppCall;Lcom/umeng/facebook/internal/DialogPresenter$ParameterProvider;Lcom/umeng/facebook/internal/DialogFeature;)V

    return-object v0
.end method

.method public bridge synthetic createAppCall(Ljava/lang/Object;)Lcom/umeng/facebook/internal/AppCall;
    .locals 0

    .line 175
    check-cast p1, Lcom/umeng/facebook/share/model/ShareContent;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;->createAppCall(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/internal/AppCall;

    move-result-object p1

    return-object p1
.end method
