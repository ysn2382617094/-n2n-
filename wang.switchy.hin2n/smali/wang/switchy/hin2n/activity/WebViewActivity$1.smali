.class Lwang/switchy/hin2n/activity/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwang/switchy/hin2n/activity/WebViewActivity;->createTemplate()Lwang/switchy/hin2n/template/BaseTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwang/switchy/hin2n/activity/WebViewActivity;


# direct methods
.method constructor <init>(Lwang/switchy/hin2n/activity/WebViewActivity;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$1;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 57
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$1;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->access$000(Lwang/switchy/hin2n/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$1;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-static {p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->access$000(Lwang/switchy/hin2n/activity/WebViewActivity;)Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lwang/switchy/hin2n/activity/WebViewActivity$1;->this$0:Lwang/switchy/hin2n/activity/WebViewActivity;

    invoke-virtual {p1}, Lwang/switchy/hin2n/activity/WebViewActivity;->finish()V

    :goto_0
    return-void
.end method
