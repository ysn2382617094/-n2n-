.class Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;
.super Ljava/lang/Object;
.source "MessageDialog.java"

# interfaces
.implements Lcom/umeng/facebook/internal/DialogPresenter$ParameterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;->createAppCall(Lcom/umeng/facebook/share/model/ShareContent;)Lcom/umeng/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;

.field final synthetic val$appCall:Lcom/umeng/facebook/internal/AppCall;

.field final synthetic val$content:Lcom/umeng/facebook/share/model/ShareContent;

.field final synthetic val$shouldFailOnDataError:Z


# direct methods
.method constructor <init>(Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;Lcom/umeng/facebook/internal/AppCall;Lcom/umeng/facebook/share/model/ShareContent;Z)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->this$1:Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler;

    iput-object p2, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->val$appCall:Lcom/umeng/facebook/internal/AppCall;

    iput-object p3, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->val$content:Lcom/umeng/facebook/share/model/ShareContent;

    iput-boolean p4, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->val$shouldFailOnDataError:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLegacyParameters()Landroid/os/Bundle;
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->val$appCall:Lcom/umeng/facebook/internal/AppCall;

    .line 202
    invoke-virtual {v0}, Lcom/umeng/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->val$content:Lcom/umeng/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->val$shouldFailOnDataError:Z

    .line 201
    invoke-static {v0, v1, v2}, Lcom/umeng/facebook/share/internal/LegacyNativeDialogParameters;->create(Ljava/util/UUID;Lcom/umeng/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->val$appCall:Lcom/umeng/facebook/internal/AppCall;

    .line 194
    invoke-virtual {v0}, Lcom/umeng/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->val$content:Lcom/umeng/facebook/share/model/ShareContent;

    iget-boolean v2, p0, Lcom/umeng/facebook/share/widget/MessageDialog$NativeHandler$1;->val$shouldFailOnDataError:Z

    .line 193
    invoke-static {v0, v1, v2}, Lcom/umeng/facebook/share/internal/NativeDialogParameters;->create(Ljava/util/UUID;Lcom/umeng/facebook/share/model/ShareContent;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
