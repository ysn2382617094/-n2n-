.class public Lcom/umeng/facebook/internal/WebDialog;
.super Landroid/app/Dialog;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;,
        Lcom/umeng/facebook/internal/WebDialog$Builder;,
        Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;,
        Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;
    }
.end annotation


# static fields
.field private static final API_EC_DIALOG_CANCEL:I = 0x1069

.field private static final BACKGROUND_GRAY:I = -0x34000000

.field static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"

.field public static final DEFAULT_THEME:I = 0x1030010

.field static final DISABLE_SSL_CHECK_FOR_TESTING:Z = false

.field private static final DISPLAY_TOUCH:Ljava/lang/String; = "touch"

.field private static final MAX_PADDING_SCREEN_HEIGHT:I = 0x500

.field private static final MAX_PADDING_SCREEN_WIDTH:I = 0x320

.field private static final MIN_SCALE_FACTOR:D = 0.5

.field private static final NO_PADDING_SCREEN_HEIGHT:I = 0x320

.field private static final NO_PADDING_SCREEN_WIDTH:I = 0x1e0

.field static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"


# instance fields
.field private contentFrameLayout:Landroid/widget/FrameLayout;

.field private crossImageView:Landroid/widget/ImageView;

.field private expectedRedirectUrl:Ljava/lang/String;

.field private isDetached:Z

.field private isPageFinished:Z

.field private listenerCalled:Z

.field private onCompleteListener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

.field private spinner:Landroid/app/ProgressDialog;

.field private uploadTask:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x1030010

    .line 146
    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/facebook/internal/WebDialog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 158
    invoke-direct {p0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "fbconnect://success"

    .line 112
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/umeng/facebook/internal/WebDialog;->listenerCalled:Z

    .line 120
    iput-boolean p1, p0, Lcom/umeng/facebook/internal/WebDialog;->isDetached:Z

    .line 121
    iput-boolean p1, p0, Lcom/umeng/facebook/internal/WebDialog;->isPageFinished:Z

    .line 159
    iput-object p2, p0, Lcom/umeng/facebook/internal/WebDialog;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/umeng/facebook/internal/WebDialog$OnCompleteListener;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 173
    invoke-direct {p0, p1, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "fbconnect://success"

    .line 112
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/umeng/facebook/internal/WebDialog;->listenerCalled:Z

    .line 120
    iput-boolean p1, p0, Lcom/umeng/facebook/internal/WebDialog;->isDetached:Z

    .line 121
    iput-boolean p1, p0, Lcom/umeng/facebook/internal/WebDialog;->isPageFinished:Z

    if-nez p3, :cond_0

    .line 175
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string p4, "redirect_uri"

    const-string v0, "fbconnect://success"

    .line 179
    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "display"

    const-string v0, "touch"

    .line 181
    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "sdk"

    .line 183
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "android-%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 185
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iput-object p5, p0, Lcom/umeng/facebook/internal/WebDialog;->onCompleteListener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    const-string p1, "share"

    .line 189
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "media"

    .line 190
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    new-instance p1, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

    invoke-direct {p1, p0, p2, p3}, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;-><init>(Lcom/umeng/facebook/internal/WebDialog;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->uploadTask:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {}, Lcom/umeng/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    invoke-static {}, Lcom/umeng/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "dialog/"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 193
    invoke-static {p1, p2, p3}, Lcom/umeng/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->url:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/umeng/facebook/internal/WebDialog;)Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/umeng/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/umeng/facebook/internal/WebDialog;I)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lcom/umeng/facebook/internal/WebDialog;->setUpWebView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/umeng/facebook/internal/WebDialog;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/umeng/facebook/internal/WebDialog;->isDetached:Z

    return p0
.end method

.method static synthetic access$300(Lcom/umeng/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$400(Lcom/umeng/facebook/internal/WebDialog;)Landroid/widget/FrameLayout;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/umeng/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/umeng/facebook/internal/WebDialog;)Landroid/webkit/WebView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/umeng/facebook/internal/WebDialog;)Landroid/widget/ImageView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/umeng/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/umeng/facebook/internal/WebDialog;Z)Z
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/umeng/facebook/internal/WebDialog;->isPageFinished:Z

    return p1
.end method

.method static synthetic access$902(Lcom/umeng/facebook/internal/WebDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->url:Ljava/lang/String;

    return-object p1
.end method

.method private createCrossImage()V
    .locals 3

    .line 422
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    .line 424
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/umeng/facebook/internal/WebDialog$2;

    invoke-direct {v1, p0}, Lcom/umeng/facebook/internal/WebDialog$2;-><init>(Lcom/umeng/facebook/internal/WebDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/common/ResContainer;->get(Landroid/content/Context;)Lcom/umeng/socialize/common/ResContainer;

    move-result-object v1

    const-string v2, "com_facebook_close"

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->drawable(Ljava/lang/String;)I

    move-result v1

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 436
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private getScaledSize(IFII)I
    .locals 4

    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-int p2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-gt p2, p3, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    if-lt p2, p4, :cond_1

    goto :goto_0

    :cond_1
    sub-int p2, p4, p2

    int-to-double v2, p2

    sub-int/2addr p4, p3

    int-to-double p2, p4

    .line 385
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, p2

    mul-double v2, v2, v0

    add-double/2addr v0, v2

    :goto_0
    int-to-double p1, p1

    .line 390
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private setUpWebView(I)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 441
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 442
    new-instance v1, Lcom/umeng/facebook/internal/WebDialog$3;

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/umeng/facebook/internal/WebDialog$3;-><init>(Lcom/umeng/facebook/internal/WebDialog;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    .line 454
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 455
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 456
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/umeng/facebook/internal/WebDialog$DialogWebViewClient;-><init>(Lcom/umeng/facebook/internal/WebDialog;Lcom/umeng/facebook/internal/WebDialog$1;)V

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 457
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 458
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/umeng/facebook/internal/WebDialog;->url:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 459
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 462
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 463
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 464
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 465
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 466
    iget-object v1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/umeng/facebook/internal/WebDialog$4;

    invoke-direct {v2, p0}, Lcom/umeng/facebook/internal/WebDialog$4;-><init>(Lcom/umeng/facebook/internal/WebDialog;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 477
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 478
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/high16 p1, -0x34000000    # -3.3554432E7f

    .line 479
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 480
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->onCompleteListener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/umeng/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/umeng/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/umeng/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 233
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->isDetached:Z

    if-nez v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 238
    :cond_1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected isListenerCalled()Z
    .locals 1

    .line 336
    iget-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->listenerCalled:Z

    return v0
.end method

.method protected isPageFinished()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->isPageFinished:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x0

    .line 269
    iput-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->isDetached:Z

    .line 270
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 275
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 277
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    .line 278
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 279
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com_facebook_loading"

    invoke-static {v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 281
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 282
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/umeng/facebook/internal/WebDialog$1;

    invoke-direct {v1, p0}, Lcom/umeng/facebook/internal/WebDialog$1;-><init>(Lcom/umeng/facebook/internal/WebDialog;)V

    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 289
    invoke-virtual {p0, v0}, Lcom/umeng/facebook/internal/WebDialog;->requestWindowFeature(I)Z

    .line 290
    new-instance p1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    .line 293
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->resize()V

    .line 294
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x11

    invoke-virtual {p1, v1}, Landroid/view/Window;->setGravity(I)V

    .line 297
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 303
    invoke-direct {p0}, Lcom/umeng/facebook/internal/WebDialog;->createCrossImage()V

    .line 305
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->url:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 309
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 310
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/umeng/facebook/internal/WebDialog;->setUpWebView(I)V

    .line 316
    :cond_0
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->contentFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Lcom/umeng/facebook/internal/WebDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->isDetached:Z

    .line 264
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->cancel()V

    .line 225
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onStart()V
    .locals 2

    .line 243
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 244
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->uploadTask:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->uploadTask:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

    invoke-virtual {v0}, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->uploadTask:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 246
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->resize()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->uploadTask:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->uploadTask:Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/umeng/facebook/internal/WebDialog$UploadStagingResourcesTask;->cancel(Z)Z

    .line 256
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method protected parseResponseUri(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 327
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 329
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 330
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/facebook/internal/Utility;->parseUrlQueryString(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public resize()V
    .locals 6

    .line 348
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 349
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 350
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 351
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 354
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v2, :cond_0

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 355
    :goto_0
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v3, :cond_1

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1

    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 357
    :goto_1
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x1e0

    const/16 v5, 0x320

    .line 358
    invoke-direct {p0, v0, v3, v4, v5}, Lcom/umeng/facebook/internal/WebDialog;->getScaledSize(IFII)I

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 357
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 360
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0x500

    .line 361
    invoke-direct {p0, v2, v3, v5, v4}, Lcom/umeng/facebook/internal/WebDialog;->getScaledSize(IFII)I

    move-result v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 360
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 364
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method protected sendErrorToListener(Ljava/lang/Throwable;)V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->onCompleteListener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 403
    iput-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->listenerCalled:Z

    .line 405
    instance-of v0, p1, Lcom/umeng/facebook/FacebookException;

    if-eqz v0, :cond_0

    .line 406
    check-cast p1, Lcom/umeng/facebook/FacebookException;

    goto :goto_0

    .line 408
    :cond_0
    new-instance v0, Lcom/umeng/facebook/FacebookException;

    invoke-direct {v0, p1}, Lcom/umeng/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->onCompleteListener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V

    .line 411
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected sendSuccessToListener(Landroid/os/Bundle;)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->onCompleteListener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->listenerCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/umeng/facebook/internal/WebDialog;->listenerCalled:Z

    .line 396
    iget-object v0, p0, Lcom/umeng/facebook/internal/WebDialog;->onCompleteListener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/facebook/FacebookException;)V

    .line 397
    invoke-virtual {p0}, Lcom/umeng/facebook/internal/WebDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected setExpectedRedirectUrl(Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->expectedRedirectUrl:Ljava/lang/String;

    return-void
.end method

.method public setOnCompleteListener(Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/umeng/facebook/internal/WebDialog;->onCompleteListener:Lcom/umeng/facebook/internal/WebDialog$OnCompleteListener;

    return-void
.end method
