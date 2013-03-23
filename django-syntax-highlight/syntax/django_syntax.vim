" Vim syntax file
" Django syntax coloring
" Language: Python /Django Web framework/
" Version: 0.1
" Maintainer: Kolozsi Róbert <https://github.com/old-willow>
" Date Created: Jan 4, 2013
" Last Change: March 23, 2013
"

if version < 700
    syntax clear
endif

"if exists("b:current_syntax")
"    finish
"endif

"if exists("g:loaded_django") || &cp
"    finish
"else
"    let g:loaded_django = 1
"endif
let g:loaded_django = 1

" Django classes {{{1
syn keyword djangoClass ARCUITField ARDNIField ARPostalCodeField ARProvinceSelect
            \ ATSocialSecurityNumberField ATStateSelect ATZipCodeField
            \ AUPhoneNumberField AUPostCodeField AUStateField AUStateSelect
            \ ActionForm AdminAuthenticationForm
            \ AdminCommaSeparatedIntegerFieldWidget AdminDateWidget
            \ AdminEmailHandler AdminErrorList AdminField AdminFileWidget
            \ AdminForm AdminIntegerFieldWidget AdminLogNode AdminMediaHandler
            \ AdminPasswordChangeForm AdminRadioFieldRenderer AdminRadioSelect
            \ AdminReadonlyField AdminSeleniumWebDriverTestCase AdminSite
            \ AdminSplitDateTime AdminTextInputWidget AdminTextareaWidget
            \ AdminTimeWidget AdminURLFieldWidget Aggregate AggregateQuery
            \ AllOGRFields AllValuesFieldListFilter AlreadyModerated
            \ AlreadyRegistered AnonymousUser AnonymousUserBackend
            \ AnonymousUserBackendTest AnotherMixin AppCache AppCommand
            \ AppDirectoriesFinder AppStaticStorage Approximate Archive
            \ ArchiveException ArchiveIndexView Area AreaField AreaTest Article
            \ AssignmentNode Atom1Feed AugmentedLocation AustraliaCity
            \ AuthContextProcessorTests AuthViewNamedURLTests AuthViewsTestCase
            \ AuthenticationForm AuthenticationFormTest AuthenticationMiddleware
            \ Author AutoEscapeControlNode AutoField Avg BCryptPasswordHasher
            \ BEPhoneNumberField BEPostalCodeField BEProvinceSelect
            \ BERegionSelect BRCNPJField BRCPFField BRPhoneNumberField
            \ BRStateChoiceField BRStateSelect BRZipCodeField BackendTest
            \ BadHeaderError BadSignature BaseArchive BaseArchiveIndexView
            \ BaseCache BaseCommand BaseCommentAbstractModel BaseCommentNode
            \ BaseConfigurator BaseContext BaseConverter BaseCreateView
            \ BaseDatabaseCache BaseDatabaseClient BaseDatabaseCreation
            \ BaseDatabaseFeatures BaseDatabaseIntrospection
            \ BaseDatabaseOperations BaseDatabaseValidation BaseDatabaseWrapper
            \ BaseDateDetailView BaseDateListView BaseDayArchiveView
            \ BaseDeleteView BaseDetailView BaseEmailBackend BaseField
            \ BaseFinder BaseForm BaseFormSet BaseFormView
            \ BaseGenericInlineFormSet BaseHandler BaseIncludeNode
            \ BaseInlineFormSet BaseListView BaseLoader BaseMemcachedCache
            \ BaseModelAdmin BaseModelForm BaseModelFormSet BaseMonthArchiveView
            \ BasePasswordHasher BaseRunserverCommand BaseSettings
            \ BaseSpatialOperations BaseStorage BaseStorageFinder
            \ BaseTemporalField BaseTest BaseTestSuite BaseTodayArchiveView
            \ BaseUpdateView BaseValidator BaseWeekArchiveView
            \ BaseYearArchiveView BasicTestCase BigIntegerField BlockContext
            \ BlockNode BlockTranslateNode Book BooleanField
            \ BooleanFieldListFilter BoundField BoundMethodWeakref
            \ BoundNonDescriptorMethodWeakref BoundRelatedObject BoundaryIter
            \ CAPhoneNumberField CAPostalCodeField CAProvinceField
            \ CAProvinceSelect CASocialInsuranceNumberField
            \ CHIdentityCardNumberField CHPhoneNumberField CHStateSelect
            \ CHZipCodeField CLRegionSelect CLRutField CNCellNumberField
            \ CNIDCardField CNPhoneNumberField CNPostCodeField CNProvinceSelect
            \ CODepartmentSelect CZBirthNumberField CZICNumberField
            \ CZPostalCodeField CZRegionSelect CacheClass CacheDBSessionTests
            \ CacheEntry CacheKeyWarning CacheMiddleware CacheNode
            \ CacheSessionTests CachedDnsName CachedFilesMixin
            \ CachedStaticFilesStorage CalendarPlugin CallableView
            \ CallbackFilter CensusZipcode ChangeList ChangePasswordTest
            \ ChangepasswordManagementCommandTestCase CharField CheckboxInput
            \ CheckboxSelectMultiple Choice ChoiceField ChoicesFieldListFilter
            \ ChunkIter City City3D CityBase ClearableFileInput Client
            \ ClientHandler Collect Collector ComboField
            \ CommaSeparatedIntegerField Command CommandError Comment
            \ CommentCountNode CommentDetailsForm CommentFlag CommentForm
            \ CommentFormNode CommentListNode CommentManager CommentModerator
            \ CommentNode CommentPostBadRequest CommentSecurityForm
            \ CommentsAdmin CommonMiddleware CompatCookie
            \ ConditionalGetMiddleware ConfiguredStorage ConnectionDoesNotExist
            \ ConnectionHandler ConnectionRouter ConstantIncludeNode Constraint
            \ ContactWizard ContentFile ContentNotRenderedError ContentType
            \ ContentTypeManager ContentTypesTests Context ContextList
            \ ContextPopException ConvertingDict ConvertingList ConvertingTuple
            \ CookieContactWizard CookieFormTests CookieSessionTests
            \ CookieStorage CookieTest CookieWizardTests CookieWizardView
            \ CoordTransform Count Country County CountyFeat CreateError
            \ CreateView Creator CryptPasswordHasher CsrfTokenNode
            \ CsrfViewMiddleware CurrentSiteManager CursorDebugWrapper
            \ CursorIterator CursorWrapper CustomField CustomKwargsStep1
            \ CustomRemoteUserBackend CycleNode DEIdentityCardNumberField
            \ DEStateSelect DEZipCodeField DataSource DataSourceTest
            \ DatabaseCache DatabaseClient DatabaseCreation DatabaseError
            \ DatabaseFeatures DatabaseIntrospection DatabaseOperations
            \ DatabaseSessionTests DatabaseValidation DatabaseWrapper
            \ DatabrowsePlugin DatabrowseSite DatabrowseTests Date
            \ DateDetailView DateField DateFieldListFilter DateFormat DateInput
            \ DateMixin DateModifierNode DateQuery DateQuerySet DateTimeField
            \ DateTimeInput DateViewMixin DayArchiveView DayMixin DayView
            \ DebugLexer DebugNode DebugNodeList DebugParser DebugRunner
            \ DebugVariableNode DecimalField DeclarativeFieldsMetaclass
            \ DefaultConnectionProxy DefaultModelDatabrowse DefaultStorage
            \ DefaultStorageFinder DeferredAttribute DeleteQuery DeleteView
            \ DeletionMixin DescriptionLackingField DeserializationError
            \ DeserializedObject Deserializer DetailView DictConfigurator
            \ DictWrapper DirectoryEntry Distance DistanceField DistanceTest
            \ DjangoJSONEncoder DjangoRuntimeWarning DjangoSafeDumper
            \ DjangoTestRunner DjangoTestSuiteRunner DjangoTranslation
            \ DjangoUnicodeDecodeError DocFileCase DocTestCase DocTestFailure
            \ DocTestRunner DotExpandedDict Driver DriverTest DummyCache
            \ DummyRequest ECProvinceSelect ESCCCField ESIdentityCardNumberField
            \ ESPhoneNumberField ESPostalCodeField ESProvinceSelect
            \ ESRegionSelect EasyChoice EasyField EasyInstance EasyInstanceField
            \ EasyModel EasyQuerySet Element EmailBackend EmailField
            \ EmailMessage EmailMultiAlternatives EmailValidator Empty
            \ EmptyManager EmptyPage EmptyQuerySet EmptyResultSet
            \ EmptyShortCircuit Enclosure EndToken Entry EntryModerator Envelope
            \ EnvelopeTest ErrorDict ErrorList EscapeData EscapeString
            \ EscapeUnicode EverythingNode ExceptionReporter
            \ ExceptionReporterFilter ExpressionNode ExtendsError ExtendsNode
            \ Extent Extent3D ExtraWhere FIMunicipalitySelect
            \ FISocialSecurityNumber FIZipCodeField FRDepartmentSelect
            \ FRPhoneNumberField FRZipCodeField FakeGeom1 FakeGeom2 FakePayload
            \ FallbackStorage FallbackTest Feature Feed FeedDoesNotExist
            \ FetchFromCacheMiddleware Field FieldChoicePlugin FieldDoesNotExist
            \ FieldError FieldFile FieldListFilter Fieldline Fieldset File
            \ FileBasedCache FileDescriptor FileField FileInput FilePathField
            \ FileProxy FileProxyMixin FileSessionTests FileSystemFinder
            \ FileSystemStorage FileUploadHandler FilterExpression FilterNode
            \ FilteredSelectMultiple FirstOfNode FixedOffset FlatPage
            \ FlatPageAdmin FlatPageSitemap FlatpageAdminFormTests
            \ FlatpageCSRFTests FlatpageFallbackMiddleware FlatpageForm
            \ FlatpageMiddlewareAppendSlashTests FlatpageMiddlewareTests
            \ FlatpageNode FlatpageTemplateTagTests FlatpageViewAppendSlashTests
            \ FlatpageViewTests FlatpagesSitemapTests FlexibleFieldLookupDict
            \ FloatField FooWithBrokenAbsoluteUrl FooWithUrl FooWithoutUrl
            \ ForNode ForeignKey ForeignKeyRawIdWidget
            \ ForeignRelatedObjectsDescriptor Form FormHmacTests FormMixin
            \ FormPreview FormTests FormToolsTestCase FormView FormWizard
            \ FormatStylePlaceholderCursor Formatter FullResultSet
            \ FunctionTestCase GBCountySelect GBNationSelect GBPostcodeField
            \ GDALBase GDALException GDALInfo GEOSBase GEOSContext
            \ GEOSContextHandle GEOSContextHandle_t GEOSCoordSeq GEOSCoordSeq_t
            \ GEOSException GEOSFunc GEOSGeom_t GEOSGeometry GEOSIOTest
            \ GEOSIndexError GEOSMutationTest GEOSPrepGeom_t GEOSTest GEvent
            \ GIcon GMarker GOverlayBase GPolygon GPolyline GZipMiddleware
            \ GenericForeignKey GenericIPAddressField GenericInlineModelAdmin
            \ GenericRel GenericRelatedObjectManager GenericRelation GenericSite
            \ GenericSitemap GenericStackedInline GenericTabularInline
            \ GenericViewError GenericViewsSitemapTests Geo3DTest GeoAdminTest
            \ GeoAggregate GeoAtom1Feed GeoConstraint GeoDjangoTestSuiteRunner
            \ GeoFeedMixin GeoFeedTest GeoFlexibleFieldLookupDict GeoIP
            \ GeoIPException GeoIPRecord GeoIPTag GeoIPTest
            \ GeoIntrospectionError GeoManager GeoModelAdmin GeoModelTest
            \ GeoQuery GeoQuerySet GeoRSSFeed GeoRSSSitemap GeoRegressionTests
            \ GeoSQLCompiler GeoSitemapTest GeoValuesListQuerySet
            \ GeoValuesQuerySet GeoWhereNode GeographyTest GeomField
            \ GeometryCollection GeometryCollectionField GeometryColumns
            \ GeometryField GeometryFieldTest GeometryProxy
            \ GetAvailableLanguagesNode GetCurrentLanguageBidiNode
            \ GetCurrentLanguageNode GetCurrentTimezoneNode
            \ GetDefaultUsernameTestCase GetLanguageInfoListNode
            \ GetLanguageInfoNode GoogleMap GoogleMapException GoogleMapSet
            \ GoogleZoom Group GroupAdmin GroupManager HRCountySelect
            \ HRJMBAGField HRJMBGField HRLicensePlateField
            \ HRLicensePlatePrefixSelect HROIBField HRPhoneNumberField
            \ HRPhoneNumberPrefixSelect HRPostalCodeField HTMLParser
            \ HTTPSDetectionSitemapTests HTTPSSitemap HTTPSSitemapTests
            \ HTTPSitemapTests HashTestBlankForm HashTestForm HiddenInput
            \ Http404 HttpRequest HttpResponse HttpResponseBadRequest
            \ HttpResponseForbidden HttpResponseGone HttpResponseNotAllowed
            \ HttpResponseNotFound HttpResponseNotModified
            \ HttpResponsePermanentRedirect HttpResponseRedirect
            \ HttpResponseRedirectBase HttpResponseServerError HumanizeTests
            \ ICity1 ICity2 IDLicensePlateField IDLicensePlatePrefixSelect
            \ IDNationalIdentityNumberField IDPhoneNumberField IDPostCodeField
            \ IDProvinceSelect IECountySelect ILIDNumberField ILPostalCodeField
            \ INPhoneNumberField INStateField INStateSelect INZipCodeField
            \ IOBase IPAddressField ISIdNumberField ISPhoneNumberField
            \ ISPostalCodeSelect ITProvinceSelect ITRegionSelect
            \ ITSocialSecurityNumberField ITVatNumberField ITZipCodeField
            \ IfChangedNode IfEqualNode IfNode IfParser ImageField
            \ ImageFieldFile ImageFile ImageFileDescriptor ImmutableList
            \ ImproperlyConfigured InActiveUserBackend InActiveUserBackendTest
            \ InMemoryUploadedFile IncludeNode InclusionNode
            \ IncorrectLookupParameters IndexView InlineAdminForm
            \ InlineAdminFormSet InlineFieldset InlineForeignKeyField
            \ InlineForeignKeyHiddenInput InlineModelAdmin Input
            \ InputStreamExhausted InsertIdVar InsertQuery
            \ InstanceOverrideWizard IntegerField IntegrityError
            \ InterBoundaryIter Interstate Interstate2D Interstate3D
            \ InterstateProj2D InterstateProj3D Invalid InvalidCacheBackendError
            \ InvalidDecimal InvalidInteger InvalidPage InvalidQuery
            \ InvalidString InvalidTemplateLibrary JPPostalCodeField
            \ JPPrefectureSelect JSONDecoder JSONEncoder JSONSerializer JsLexer
            \ KMLSitemap KMZSitemap KWCivilIDNumberField LabelCommand
            \ LanguageNode LatestCommentFeed LaxOptionParser Layer LayerMapError
            \ LayerMapTest LayerMapping LazyObject LazySettings LazyStream Lexer
            \ Library LimitedStream LineString LineStringField LinearRing
            \ ListFilter ListMixin ListMixinTest ListMixinTestSingle ListView
            \ Literal LiveServerTestCase LiveServerThread
            \ LoadDataWithNaturalKeysTestCase LoadDataWithoutNaturalKeysTestCase
            \ LoadNode Loader LoaderOrigin LocMemCache LocalTimeNode
            \ LocalTimezone LocaleMiddleware LocaleRegexProvider
            \ LocaleRegexURLResolver LocalizeNode Location LogEntry
            \ LogEntryManager LoginRequiredTestCase LoginTest LoginURLSettings
            \ LogoutTest LoremNode MD5PasswordHasher MKIdentityCardNumberField
            \ MKMunicipalityField MKMunicipalitySelect MXCURPField MXRFCField
            \ MXStateField MXStateSelect MXZipCodeField MakeLine ManagementForm
            \ ManagementUtility Manager ManagerDescriptor ManyRelatedManager
            \ ManyRelatedObjectsDescriptor ManyToManyField ManyToManyRawIdWidget
            \ ManyToManyRel ManyToOneRel Max MaxLengthValidator
            \ MaxValueValidator MeasureBase Media MediaDefiningClass
            \ MemcachedCache MemoryFileUploadHandler MergeDict Message
            \ MessageDecoder MessageEncoder MessageFailure MessageMiddleware
            \ Meta MiddlewareNotUsed MiddlewareTest Min MinLengthValidator
            \ MinValueValidator MinusOneSRID MissingForeignKey
            \ MissingStorageClass MissingStorageModule MockDateTime Mocked
            \ ModPythonHandler ModPythonRequest Model ModelAdmin ModelBackend
            \ ModelBase ModelChoiceField ModelChoiceIterator ModelDatabrowse
            \ ModelForm ModelFormMetaclass ModelFormMixin ModelFormOptions
            \ ModelMultipleChoiceField ModelState Moderator MonthArchiveView
            \ MonthMixin MonthView Morsel MultiJoin MultiLineString
            \ MultiLineStringField MultiPartParser MultiPartParserError
            \ MultiPoint MultiPoint3D MultiPointField MultiPolygon
            \ MultiPolygonField MultiValueDict MultiValueDictKeyError
            \ MultiValueField MultiWidget MultipleChoiceField
            \ MultipleHiddenInput MultipleObjectMixin
            \ MultipleObjectTemplateResponseMixin MultipleObjectsReturned
            \ MyAdminSite MyModel MySQLCreation MySQLIntrospection
            \ MySQLOperations MyUserForm MyWizard NLPhoneNumberField
            \ NLProvinceSelect NLSoFiNumberField NLZipCodeField
            \ NOMunicipalitySelect NOSocialSecurityNumber NOZipCodeField
            \ NamedCookieFormTests NamedCookieWizardTests NamedFormTests
            \ NamedSessionFormTests NamedSessionWizardTests
            \ NamedUrlCookieWizardView NamedUrlSessionWizardView
            \ NamedUrlWizardView NamedWizardTests NaturalKeysTestCase
            \ NestedObjects NoArgsCommand NoBackendsTest NoFileStorageConfigured
            \ NoInActiveUserBackend NoInActiveUserBackendTest NoReverseMatch
            \ Node NodeList NonCapture NotAGeometry NotModerated NotRegistered
            \ NotRelationField NothingNode NowNode NullBooleanField
            \ NullBooleanSelect NullHandler OFTBinary OFTDate OFTDateTime
            \ OFTInteger OFTIntegerList OFTReal OFTRealList OFTString
            \ OFTStringList OFTTime OFTWideString OFTWideStringList OGREnvelope
            \ OGRException OGRGeomTest OGRGeomType OGRGeometry OGRIndexError
            \ OGRInspectTest OLMap OSMGeoAdmin ObjectDetailPlugin
            \ ObjectDoesNotExist OneToOneField OneToOneRel OpenLayersWidget
            \ Operator Options OracleCreation OracleIntrospection
            \ OracleOperations OracleParam OracleSpatialAdapter OrderWrt Origin
            \ OutputChecker PBKDF2PasswordHasher PBKDF2SHA1PasswordHasher
            \ PEDNIField PERUCField PERegionSelect PLCountySelect PLNIPField
            \ PLNationalIDCardNumberField PLPESELField PLPostalCodeField
            \ PLProvinceSelect PLREGONField PTPhoneNumberField PTZipCodeField
            \ Page Page1 Page2 Page3 PageNotAnInteger Paginator Parcel Parser
            \ PasswordChangeForm PasswordChangeFormTest PasswordInput
            \ PasswordResetForm PasswordResetFormTest PasswordResetTest
            \ PasswordResetTokenGenerator PennsylvaniaCity PermLookupDict
            \ PermWrapper Permission PermissionDenied PermissionManager
            \ PhoneNumberField PickleSerializer Point Point2D Point3D PointField
            \ Polygon Polygon2D Polygon3D PolygonField PositiveIntegerField
            \ PositiveSmallIntegerField PostGISAdapter PostGISCreation
            \ PostGISDistance PostGISFunction PostGISFunctionParam
            \ PostGISIntrospection PostGISOperations PostGISOperator
            \ PostGISRelate PostGISSphereDistance PostGISSpheroidDistance
            \ PrefixNode PreparedGeometry PreviewTests ProcessFormView
            \ ProfileTestCase Promise ProtectedError PyDepartmentSelect
            \ PyLibMCCache PyNumberedDepartmentSelect Query QueryDict QuerySet
            \ QuerySetOverrideWizard QueryWrapper QuietWSGIRequestHandler
            \ ROCIFField ROCNPField ROCountyField ROCountySelect ROIBANField
            \ ROPhoneNumberField ROPostalCodeField RUAlienPassportNumberField
            \ RUCountySelect RUPassportNumberField RUPostalCodeField
            \ RURegionSelect RWLock RadioFieldRenderer RadioInput RadioSelect
            \ RawQuery RawQuerySet RawValue ReadOnlyPasswordHashField
            \ ReadOnlyPasswordHashWidget Redirect RedirectAdmin
            \ RedirectFallbackMiddleware RedirectView RegexField RegexURLPattern
            \ RegexURLResolver RegexValidator RegroupNode RelatedField
            \ RelatedFieldListFilter RelatedFieldWidgetWrapper
            \ RelatedGeoModelTest RelatedManager RelatedObject RemoteUserBackend
            \ RemoteUserCustomTest RemoteUserMiddleware
            \ RemoteUserNoCreateBackend RemoteUserNoCreateTest RemoteUserTest
            \ RenderCommentFormNode RenderCommentListNode RenderContext
            \ RequestContext RequestFactory RequestSite RequireDebugFalse
            \ Resolver404 ResolverMatch ResultList
            \ ReverseGenericRelatedObjectsDescriptor
            \ ReverseManyRelatedObjectsDescriptor
            \ ReverseSingleRelatedObjectDescriptor RootElement
            \ RowlevelBackendTest Rss201rev2Feed RssFeed RssUserland091Feed
            \ SDODWithin SDODistance SDOGeomRelate SDOOperation SDORelate
            \ SECountySelect SEOrganisationNumberField
            \ SEPersonalIdentityNumberField SEPostalCodeField SHA1PasswordHasher
            \ SIEMSOField SIPhoneNumberField SIPostalCodeField
            \ SIPostalCodeSelect SITaxNumberField SKDistrictSelect
            \ SKPostalCodeField SKRegionSelect SQLAggregateCompiler SQLCompiler
            \ SQLDateCompiler SQLDeleteCompiler SQLEvaluator SQLInsertCompiler
            \ SQLUpdateCompiler SQLiteCursorWrapper SRSException SafeData
            \ SafeExceptionReporterFilter SafeMIMEMultipart SafeMIMEText
            \ SafeString SafeUnicode SecurityHashTests Select SelectDateWidget
            \ SelectMultiple SerializationError Serializer
            \ SerializerDoesNotExist ServerHandler Session SessionBase
            \ SessionContactWizard SessionFormTests SessionManager
            \ SessionMiddleware SessionMiddlewareTests SessionStorage
            \ SessionStore SessionTest SessionTestsMixin SessionWizardTests
            \ SessionWizardView SetPasswordForm SetPasswordFormTest Settings
            \ Signal SignalTestCase SignatureExpired Signer SimpleCookie
            \ SimpleLazyObject SimpleListFilter SimpleNode SimpleRowlevelBackend
            \ SimpleSitemap SimpleTemplateResponse SimpleTest SimpleTestCase
            \ SimpleUploadedFile SimplerXMLGenerator SingleObjectMixin
            \ SingleObjectTemplateResponseMixin SingleRelatedObjectDescriptor
            \ SingleZipReader Site SiteAdmin SiteManager SiteProfileNotAvailable
            \ Sitemap SitemapNotFound SitemapTestsBase SitesFrameworkTests
            \ SkipFile SkipTest SlugField SmallIntegerField SomeModel
            \ SomeOtherModel SortedDict SouthTexasCity SouthTexasCityFt
            \ SouthTexasInterstate SouthTexasZipcode SpacelessNode
            \ SpatiaLiteAdapter SpatiaLiteClient SpatiaLiteCreation
            \ SpatiaLiteDistance SpatiaLiteFunction SpatiaLiteFunctionParam
            \ SpatiaLiteIntrospection SpatiaLiteOperations SpatiaLiteOperator
            \ SpatiaLiteRelate SpatialFunction SpatialOperation SpatialRefSys
            \ SpatialRefSysMixin SpatialRefSysTest SpatialRefTest
            \ SpatialReference SplitDateTimeField SplitDateTimeWidget
            \ SplitHiddenDateTimeWidget SsiNode StackedInline State
            \ StaticFilesHandler StaticFilesStorage StdDev StdDevPop Step1 Step2
            \ Step3 StepsHelper StopFutureHandlers StopUpload
            \ StoppableWSGIServer Storage StrAndUnicode StringOrigin SubWidget
            \ SubfieldBase Sum SuspiciousOperation SyndicationFeed
            \ TRIdentificationNumberField TRPhoneNumberField TRPostalCodeField
            \ TRProvinceSelect TabularInline TagHelperNode TarArchive Template
            \ TemplateCommand TemplateDoesNotExist TemplateEncodingError
            \ TemplateIfParser TemplateLiteral TemplateResponse
            \ TemplateResponseMixin TemplateSyntaxError TemplateTagNode
            \ TemplateView Templates TemporaryFile TemporaryFileUploadHandler
            \ TemporaryUploadedFile TestCase TestCookieStorage TestDS
            \ TestDataMixin TestFieldType TestForm TestFormPreview TestGeoAtom1
            \ TestGeoAtom2 TestGeoRSS1 TestGeoRSS2 TestGeom TestGeomSet
            \ TestLoadStorage TestLoader TestNamedUrlCookieWizardView
            \ TestNamedUrlSessionWizardView TestObj TestPoint TestProgram
            \ TestResult TestSessionStorage TestStorage TestSuite
            \ TestUtilsHashPass TestW3CGeo1 TestW3CGeo2 TestW3CGeo3 TestWizard
            \ TestWizardClass TextField TextInput TextNode TextTestResult
            \ TextTestRunner Textarea ThreadLocalIO TimeField TimeFormat
            \ TimeInput TimestampSigner TimezoneNode TodayArchiveView Tok Token
            \ TokenBase TokenGeneratorTest TokenParser Track Trans Transaction
            \ TransactionManagementError TransactionMiddleware
            \ TransactionTestCase TranslateNode TranslateParser Truncator Truth
            \ TypedChoiceField TypedMultipleChoiceField UMCNField URLField
            \ URLNode URLValidator USPSSelect USPhoneNumberField
            \ USPostalCodeField USSocialSecurityNumberField USStateField
            \ USStateSelect USZipCodeField UTC UYCIField UYDepartamentSelect
            \ UnexpectedException Union UnreadablePostError
            \ UnrecognizedArchiveFormat UnsaltedMD5PasswordHasher
            \ UpdateCacheMiddleware UpdateQuery UpdateView UploadFileException
            \ UploadedFile User UserAdmin UserChangeForm UserChangeFormTest
            \ UserCreationForm UserCreationFormTest UserForm UserListA UserListB
            \ UserManager UserManagerTestCase UserSettingsHolder ValidationError
            \ ValuesListQuerySet ValuesQuerySet Variable VariableDoesNotExist
            \ VariableNode VariableWrapper Variance View ViewDoesNotExist
            \ W3CGeoFeed WKBReader WKBReader_st WKBWriter WKBWriter_st
            \ WKTAdapter WKTReader WKTReader_st WKTWriter WKTWriter_st
            \ WSGIHandler WSGIRequest WSGIRequestHandler WSGIServer
            \ WSGIServerException WebdesignTest WeekArchiveView WeekMixin
            \ WhereNode Widget WidthRatioNode WindowsError WithNode Wizard
            \ WizardFormKwargsOverrideTests WizardPageOneForm
            \ WizardPageThreeForm WizardPageTwoAlternativeForm WizardPageTwoForm
            \ WizardTestGenericViewInterface WizardTestKwargs WizardTests
            \ WizardView WizardWithProcessStep XFrameOptionsMiddleware
            \ XViewMiddleware YearArchiveView YearMixin YearView YetAnotherModel
            \ ZAIDField ZAPostCodeField ZipArchive Zipcode
            \ _AssertNumQueriesContext _AssertRaisesContext
            \ _AssertTemplateNotUsedContext _AssertTemplateUsedContext
            \ _DebugResult _EnsureCsrfCookie _EnsureCsrfToken _ErrorHolder
            \ _ExpectedFailure _ImprovedEvent _InterruptHandler
            \ _MediaFilesHandler _OutputRedirectingPdb _SpoofOut
            \ _TypeEqualityDict _UnexpectedSuccess
            \ _UninitializedOperatorsDescriptor _WKBReader _WKTReader
            \ _WritelnDecorator __proxy__ cached_property classonlymethod date
            \ datetime datetimeobject gdal_char_p geoip_char_p geos_char_p
            \ lazy_property naive override override_settings
" }}}

" Django Constants {{{1
syn keyword djangoConstant ABSOLUTE_URL_OVERRIDES ACTION_CHECKBOX_NAME ADD ADDITION
            \ ADDRESS_HEADERS ADMINISTRATIVE_UNIT_CHOICES ADMINS ADMIN_FOR ALIAS
            \ ALLOWED_INCLUDE_ROOTS ALLOWED_VARIABLE_CHARS ALL_TERMS ALL_VAR AND
            \ APPEND_SLASH ARMED_FORCES_STATES ASCTIME_DATE ASKML
            \ AUTHENTICATION_BACKENDS AUTO_ID BACKENDS BACKEND_SESSION_KEY
            \ BACKSLASH BLANKLINE_MARKER BLANK_CHOICE_DASH BLANK_CHOICE_NONE
            \ BLOCK_CONTEXT_KEY BLOCK_TAG_END BLOCK_TAG_START BOUNDARY
            \ BOUNDINGCIRCLE BUFFEROUTPUT BUILTIN_SERIALIZERS CACHES
            \ CACHE_MIDDLEWARE_ALIAS CACHE_MIDDLEWARE_KEY_PREFIX
            \ CACHE_MIDDLEWARE_SECONDS CATCHBREAK CELL_RE CHANGE CHUNK_SIZE
            \ CLEANSED_SUBSTITUTE CN_LOCATION_CODES CN_PROVINCE_CHOICES
            \ COFA_STATES COMMENT COMMENTS_ALLOW_PROFANITIES COMMENT_MAX_LENGTH
            \ COMMENT_TAG_END COMMENT_TAG_START COMMON_P COMMON_WORDS
            \ COMPARISON_FLAGS CONTENT_TYPE_RE CONTEXT_PTR CONTEXT_SEPARATOR
            \ CONTIGUOUS_STATES CONVERT_PATTERN COOKIES COUNTIES_CHOICES
            \ COUNTY_CHOICES CSRF_COOKIE_DOMAIN CSRF_COOKIE_NAME
            \ CSRF_COOKIE_PATH CSRF_COOKIE_SECURE CSRF_FAILURE_TEMPLATE
            \ CSRF_FAILURE_VIEW CSRF_KEY_LENGTH CS_PTR CURP_INCONVENIENT_WORDS
            \ DARK_PALETTE DATABASES DATABASE_ROUTERS DATETIME_FORMAT
            \ DATETIME_INPUT_FORMATS DATE_FORMAT DATE_INPUT_FORMATS DATE_RE
            \ DBTYPE DEBUG DEBUG_PROPAGATE_EXCEPTIONS DECIMAL_SEPARATOR
            \ DEFAULT_ATTACHMENT_MIME_TYPE DEFAULT_CACHE_ALIAS DEFAULT_CHARSET
            \ DEFAULT_CHUNK_SIZE DEFAULT_COMMENTS_APP DEFAULT_CONTENT_TYPE
            \ DEFAULT_DATETIME_INPUT_FORMATS DEFAULT_DATE_INPUT_FORMATS
            \ DEFAULT_DB_ALIAS DEFAULT_DIRECTORY_INDEX_TEMPLATE DEFAULT_ENCODING
            \ DEFAULT_EXCEPTION_REPORTER_FILTER DEFAULT_FILE_STORAGE
            \ DEFAULT_FROM_EMAIL DEFAULT_INDEX_TABLESPACE
            \ DEFAULT_LOCALE_ENCODING DEFAULT_NAMES DEFAULT_PALETTE DEFAULT_PORT
            \ DEFAULT_TABLESPACE DEFAULT_TAGS DEFAULT_TEMPLATE DELETION
            \ DELETION_FIELD_NAME DEPARTAMENT_CHOICES DEPARTMENT_CHOICES
            \ DEPARTMENT_ROMAN_CHOICES DIFF_OMITTED DIGIT_PATTERN
            \ DISALLOWED_USER_AGENTS DISPLAY_SIZE DISTRICT_CHOICES DIV DIVIDER
            \ DJANGO_COLORS DNS_NAME DONT_ACCEPT_BLANKLINE DOT DOTS DOT_PATTERN
            \ DTOR ELLIPSIS ELLIPSIS_MARKER EMAIL_BACKEND EMAIL_HOST
            \ EMAIL_HOST_PASSWORD EMAIL_HOST_USER EMAIL_PORT EMAIL_RE
            \ EMAIL_SUBJECT_PREFIX EMAIL_USE_TLS EMPTY_CHANGELIST_VALUE
            \ EMPTY_DICT EMPTY_URLCONF_TEMPLATE EMPTY_VALUE EMPTY_VALUES
            \ ENGLAND_REGION_CHOICES ENVIRONMENT_VARIABLE ERROR ERRORFUNC ERRORS
            \ ERROR_FLAG ERROR_MESSAGE ESCAPE ESCAPE_ASCII ESCAPE_DCT
            \ ESCAPE_MAPPINGS ETAG_MATCH FAILFAST FASTCGI_HELP FASTCGI_OPTIONS
            \ FIELD FIELD_TYPES FILE FILES FILE_CHARSET FILE_INPUT_CONTRADICTION
            \ FILE_UPLOAD_HANDLERS FILE_UPLOAD_MAX_MEMORY_SIZE
            \ FILE_UPLOAD_PERMISSIONS FILE_UPLOAD_TEMP_DIR
            \ FILTER_ARGUMENT_SEPARATOR FILTER_SEPARATOR FIRST_DAY_OF_WEEK
            \ FIXTURE_DIRS FLAGS FLOAT_REPR FORCE_SCRIPT_NAME FORMAT_MODULE_PATH
            \ FORMAT_SETTINGS FORMFIELD_FOR_DBFIELD_DEFAULTS GB_NATIONS_CHOICES
            \ GB_REGION_CHOICES GDAL_MAJOR_VERSION GDAL_MINOR_VERSION
            \ GDAL_SUBMINOR_VERSION GDAL_VERSION GEOG_TYPE GEOHASH
            \ GEOIP_CHECK_CACHE GEOIP_INDEX_CACHE GEOIP_MEMORY_CACHE
            \ GEOIP_MMAP_CACHE GEOIP_SETTINGS GEOIP_STANDARD GEOJSON GEOMETRIES
            \ GEOM_PTR GEOM_TYPE GEOS_CLASSES GEOS_MAJOR_VERSION
            \ GEOS_MINOR_VERSION GEOS_PREPARE GEOS_SUBMINOR_VERSION GEOS_VERSION
            \ GEO_CLASSES GET GET_ITERATOR_CHUNK_SIZE GOOGLE_MAPS_URL HASHERS
            \ HAS_GDAL HAS_GEOIP HAS_OSM HIDDEN_SETTINGS HR_COUNTY_CHOICES
            \ HR_LICENSE_PLATE_PREFIX_CHOICES HR_PHONE_NUMBER_PREFIX_CHOICES
            \ IDENTIFIER ID_CARD_RE IE_COUNTY_CHOICES IGNORED_PARAMS
            \ IGNORE_EXCEPTION_DETAIL INDEX_PATTERN INFINITY INFO
            \ INITIAL_FORM_COUNT INNER INSTALLED_APPS INTERNAL_IPS IS_POPUP_VAR
            \ IS_POSTALCODES ITER_CHUNK_SIZE JOIN_TYPE JP_PREFECTURES KEYWORD
            \ KEY_PREFIX LALIAS LANGUAGES LANGUAGES_BIDI LANGUAGE_CODE
            \ LANGUAGE_COOKIE_NAME LANG_INFO LEVEL_TAGS LHS_ALIAS LHS_JOIN_COL
            \ LICENSE_PLATE_PREFIX_CHOICES LIGHT_PALETTE LOCALE_PATHS LOCK_EX
            \ LOCK_NB LOCK_SH LOGGING LOGGING_CONFIG LOGIN_FORM_KEY
            \ LOGIN_REDIRECT_URL LOGIN_URL LOGOUT_URL LOOKUP_SEP LOUTER
            \ LUHN_ODD_LOOKUP MAKELINE MANAGERS MAX_BIGINT MAX_NUM_FORM_COUNT
            \ MAX_TRIES MEDIA_ROOT MEDIA_TYPES MEDIA_URL MEMCACHE_MAX_KEY_LENGTH
            \ MESSAGE_LEVEL MESSAGE_STORAGE MESSAGE_TAGS META MIDDLEWARE_CLASSES
            \ MK_MUNICIPALITIES MOD MODEL_METHODS_EXCLUDE MODERATOR_APPROVAL
            \ MODERATOR_DELETION MONTHS MONTHS_ALT MONTHS_AP MONTH_DAY_FORMAT
            \ MUL MULTI MULTIPART_CONTENT MULTI_TYPES MUNICIPALITY_CHOICES NAMES
            \ NOCOLOR_PALETTE NON_FIELD_ERRORS NORMALIZE_WHITESPACE
            \ NORTHERN_IRELAND_REGION_CHOICES NOTICEFUNC NULLABLE
            \ NUMBER_GROUPING NUMBER_RE NUMS OBSOLETE_STATES OGRERR_DICT
            \ OGRERR_NONE ON_EACH_SIDE ON_ENDS OPERATORS OPTIONFLAGS_BY_NAME OR
            \ ORDERING_FIELD_NAME ORDER_DIR ORDER_PATTERN ORDER_TYPE_VAR
            \ ORDER_VAR PAGE_VAR PALETTES PASSWORD PASSWORD_HASHERS
            \ PASSWORD_RESET_TIMEOUT_DAYS PHONE_DIGITS_RE PHONE_RE PING_URL POST
            \ POST_CODE_RE PREFERRED_HASHER PREPEND_WWW PREPGEOM_PTR
            \ PROFANITIES_LIST PROFILE_DATA_DIR PROVINCES_NORMALIZED
            \ PROVINCE_CHOICES QUERY_TERMS RAISE_ERROR RAW REASON_BAD_REFERER
            \ REASON_BAD_TOKEN REASON_NO_CSRF_COOKIE REASON_NO_REFERER RECTYPE
            \ RECURSIVE_RELATIONSHIP_CONSTANT REDIRECT_FIELD_NAME REGION_CHOICES
            \ REPORTING_FLAGS REPORT_CDIFF REPORT_NDIFF
            \ REPORT_ONLY_FIRST_FAILURE REPORT_UDIFF REPR_OUTPUT_SIZE REQUEST
            \ RESERVED_CHARS RESET RESTORE_LOADERS_ATTR RE_DATE
            \ RE_VALID_USERNAME RFC_INCONVENIENT_WORDS RHS_ALIAS RHS_JOIN_COL
            \ ROLES ROOT_URLCONF RTOD RUN_RELOADER RU_COUNTY_CHOICES
            \ RU_REGIONS_CHOICES SCOTTISH_REGION_CHOICES SEARCH_VAR SECRET_KEY
            \ SECURE_PROXY_SSL_HEADER SELF_CLOSING_TAGS SEND_BROKEN_LINK_EMAILS
            \ SERIALIZATION_MODULES SERVER_EMAIL SESSION_COOKIE_AGE
            \ SESSION_COOKIE_DOMAIN SESSION_COOKIE_HTTPONLY SESSION_COOKIE_NAME
            \ SESSION_COOKIE_PATH SESSION_COOKIE_SECURE SESSION_ENGINE
            \ SESSION_EXPIRE_AT_BROWSER_CLOSE SESSION_FILE_PATH SESSION_KEY
            \ SESSION_SAVE_EVERY_REQUEST SETTINGS_MODULE SET_NULL SE_POSTAL_CODE
            \ SHORT_DATETIME_FORMAT SHORT_DATE_FORMAT SIGNING_BACKEND SINGLE
            \ SINGLE_BRACE_END SINGLE_BRACE_START SITE_CACHE SITE_ID
            \ SI_POSTALCODES SI_POSTALCODES_CHOICES SKIP STATES
            \ STATES_NORMALIZED STATE_CHOICES STATICFILES_DIRS
            \ STATICFILES_FINDERS STATICFILES_STORAGE STATIC_ROOT STATIC_URL
            \ STATUS_CODE_TEXT STDERR_LINE STDOUT_LINE STRINGCHUNK SUB SUCCESS
            \ SUGGEST_REMOVAL SWEDISH_ID_NUMBER TABLE_NAME TECHNICAL_ID_MAP
            \ TEMPLATE TEMPLATE_CONTEXT_PROCESSORS TEMPLATE_DEBUG TEMPLATE_DIRS
            \ TEMPLATE_LOADERS TEMPLATE_STRING_IF_INVALID TEST_COOKIE_NAME
            \ TEST_COOKIE_VALUE TEST_DATA TEST_DATABASE_PREFIX TEST_MODULE
            \ TEST_NAME TEST_NAME   TEST_PASSWD TEST_PASSWD  TEST_RUNNER
            \ TEST_TBLSPACE TEST_TBLSPACE_TMP    TEST_TBLSPACE_TMP     TEST_USER
            \ THOUSAND_SEPARATOR TIME_FORMAT TIME_INPUT_FORMATS TIME_ZONE
            \ TOKEN_BLOCK TOKEN_COMMENT TOKEN_MAPPING TOKEN_TEXT TOKEN_VAR
            \ TOTAL_FORM_COUNT TO_FIELD_VAR TRAILING_PUNCTUATION
            \ TRANSACTIONS_MANAGED TRANSACTION_MODES TRANSLATOR_COMMENT_MARK
            \ TYPE UK_NATIONS_CHOICES UK_REGION_CHOICES UNION UNIONAGG UNITS
            \ UNKNOWN_SOURCE UNMASKED_DIGITS_TO_SHOW UNUSABLE_PASSWORD
            \ URL_VALIDATOR_USER_AGENT USAGE USAGE_AS_MAIN USAGE_FROM_MODULE
            \ USE_ETAGS USE_THOUSAND_SEPARATOR USE_TZ USE_X_FORWARDED_HOST
            \ USPS_CHOICES US_STATES US_TERRITORIES VALID_KEY_CHARS
            \ VALID_MODULE_NAME VARIABLE_ATTRIBUTE_SEPARATOR VARIABLE_TAG_END
            \ VARIABLE_TAG_START VERSION VOIVODESHIP_CHOICES
            \ WALES_REGION_CHOICES WARNING WEAKREF_TYPES WEEKDAYS WEEKDAYS_ABBR
            \ WEEKDAYS_REV WHITESPACE WHITESPACE_STR WKB_READ_PTR WKB_WRITE_PTR
            \ WKT_READ_PTR WKT_WRITE_PTR WORDS WORD_PATTERN WRAPPING_PUNCTUATION
" }}}

" Django Functions {{{1
syn keyword djangoFunction CASCADE DO_NOTHING DV_maker Deserializer DocFileSuite DocFileTest
            \ DocTestSuite IE_sanitize JSONArray JSONObject OutputString PROTECT
            \ SET SET_DEFAULT absolute_path abspathu accessed_time
            \ action_checkbox actions activate
            \ adapt_datetime_with_timezone_support add addCleanup addError
            \ addExpectedFailure addFailure addQuickElement addSkip addSuccess
            \ addTest addTests addTypeEqualityFunc addUnexpectedSuccess
            \ add_action add_aggregate add_batch add_blocks add_count_column
            \ add_css add_date_select add_deferred_loading add_distinct_fields
            \ add_domain add_edge add_event add_extra add_field add_field_update
            \ add_fields add_filter add_filters add_georss_element
            \ add_georss_point add_handlers add_immediate_loading
            \ add_initial_prefix add_item add_item_elements add_js
            \ add_lazy_relation add_level_messages add_library add_message
            \ add_never_cache_headers add_ordering add_post_render_callback
            \ add_prefix add_q add_related_update add_root_elements
            \ add_select_related add_srs_entry add_subquery
            \ add_template_response add_to_builtins add_to_class add_to_dict
            \ add_to_query add_truncation_text add_update_fields
            \ add_update_values add_view add_virtual_field addslashes
            \ admin_actions admin_list_filter admin_login admin_media_prefix
            \ admin_urlname admin_view aggregate all all_locale_paths all_valid
            \ allow allow_lazy allow_relation allow_syncdb angular_name
            \ angular_units annotate any api_get_area api_get_boundary
            \ api_get_buffer api_get_centroid api_get_convex_hull
            \ api_get_distance api_get_empty api_get_extent api_get_geom_typeid
            \ api_get_length api_get_num_coords api_get_ring api_get_simple
            \ api_get_valid api_script apnumber app_cache_ready app_dict
            \ app_index append appendlist apply_extra_context
            \ apply_response_fixes approve approve_comments archive_day
            \ archive_index archive_month archive_today archive_week
            \ archive_year area arg_byref args_check array arrayvar as_datetime
            \ as_double as_hidden as_int as_nested_sql as_p as_sql as_string
            \ as_table as_text as_textarea as_tuple as_ul as_view as_widget
            \ assertAlmostEqual assertChildNodes assertContains
            \ assertContainsEscaped assertDictContainsSubset assertDictEqual
            \ assertEqual assertFalse assertFieldOutput assertFormError
            \ assertGreater assertGreaterEqual assertHTMLEqual
            \ assertHTMLNotEqual assertIn assertIs assertIsInstance assertIsNone
            \ assertIsNot assertIsNotNone assertItemsEqual assertLess
            \ assertLessEqual assertListEqual assertMultiLineEqual
            \ assertNotAlmostEqual assertNotContains assertNotEqual assertNotIn
            \ assertNotIsInstance assertNotRegexpMatches assertNumQueries
            \ assertQuerysetEqual assertRaises assertRaisesMessage
            \ assertRaisesRegexp assertRedirects assertRegexpMatches
            \ assertSelectOptions assertSequenceEqual assertSetEqual
            \ assertTemplateNotUsed assertTemplateUsed assertTrue
            \ assertTupleEqual assert_and_parse_html assignment_tag attach
            \ attach_alternative attach_file attr_value attrs_dict auth
            \ auth_code auth_name auth_processor_attr_access
            \ auth_processor_messages auth_processor_no_attr_access
            \ auth_processor_perms auth_processor_user authenhandler
            \ authenticate autocommit autocomplete autodiscover autoescape
            \ autoinc_sql available_attrs b64_decode b64_encode back
            \ base36_to_int base64_hmac base_url_parameters become_daemon
            \ bin_constructor bin_output binary_predicate bind bind_parameter
            \ blankout body bookmarklets boolean_check bound_data bound_func
            \ boundary bpython buffer build_absolute_uri build_attrs
            \ build_request_repr build_suite build_test bulk_create
            \ bulk_insert_sql bulk_related_objects bump_prefix cache_control
            \ cache_key cache_page calculateKey calendar_view call_command
            \ callback can_filter capfirst cascaded_union catalog cell_count
            \ center centroid cfg_convert change_aliases change_view
            \ changelist_view chars check_aggregate_support check_arg_errcode
            \ check_bool check_const_string check_constraints check_cs_get
            \ check_cs_op check_cs_ptr check_dbl check_dependencies
            \ check_element check_envelope check_err check_errcode
            \ check_extent3d check_fid_range check_for_duplicate_comment
            \ check_for_language check_for_test_cookie check_formfield
            \ check_geom check_geom_offset check_isdict check_isseq check_layer
            \ check_minus_one check_ogr_fld check_output check_output_default
            \ check_output_json check_output_numeric check_output_xml
            \ check_password check_perms check_pnt check_pointer check_predicate
            \ check_readonly_fields check_record check_settings
            \ check_sized_string check_srs check_str_arg check_string
            \ check_token check_unique check_wizard_step check_zero child_text
            \ children choice choice_detail choice_list choices chunks
            \ cif_get_checksum city city_info clean clean_comment clean_email
            \ clean_fields clean_honeypot clean_html clean_ipv6_address
            \ clean_new_password2 clean_old_password clean_password
            \ clean_password2 clean_savepoints clean_security_hash
            \ clean_timestamp clean_url clean_username cleanse_setting
            \ cleanup_url clear clear_cache clear_cdata_mode clear_checkbox_id
            \ clear_checkbox_name clear_counties clear_deferred_loading
            \ clear_dir clear_limits clear_ordering clear_select_fields
            \ clear_url_caches clone close close_connection close_rings
            \ code_changed collect collector color_style colorize columns
            \ combine combine_expression comment comment_form_target commit
            \ commit_manually commit_on_success commit_unless_managed
            \ common_logger_config compare_ordering_key
            \ compat_patch_logging_config compile_filter compile_func
            \ compile_function_error compile_messages compile_string compiler
            \ complain complex_filter compress compress_kml compress_string
            \ condition conditional_content_removal conditional_escape configure
            \ configure_custom configure_filter configure_formatter
            \ configure_handler configure_logger configure_root configure_user
            \ configured confirm confirm_logged_out confirmation_view confirmed
            \ connect connections_support_transactions const_string_output
            \ constant_time_compare constraint_checks_disabled
            \ construct_change_message construct_instance construct_search
            \ contains_properly contents contribute_to_class
            \ contribute_to_related_class convert convert_extent
            \ convert_extent3d convert_geom convert_old_style_list convert_query
            \ convert_values converter convex_hull cookie_date coord_seq
            \ coord_transform coords copy copy_file copy_managers
            \ copy_plural_forms copystat count countTestCases
            \ count_active_tables country country_code country_info country_name
            \ county_helper covers create createTests create_default_site
            \ create_dummy_user create_generic_related_manager
            \ create_many_related_manager create_many_to_many_intermediary_model
            \ create_nodelist create_object create_parser create_permissions
            \ create_reference_role create_select create_superuser
            \ create_test_db create_token create_user create_var
            \ create_variable_node created_time crosses crs cs_int cs_operation
            \ cs_output csrf csrf_exempt csrf_failure csrf_response_exempt
            \ csrf_token csrf_view_exempt css_classes current current_step_data
            \ current_step_files curry cursor custom_sql_for_model cut cycle
            \ cycle_key date date_error_message date_extract_sql date_format
            \ date_hierarchy date_interval_sql date_trunc_sql dates
            \ datetime_cast_sql datum db db_manager db_type dbl_from_geom
            \ deactivate deactivate_all debug debug_script debug_src dec decode
            \ decompress decorated decorator decorator_from_middleware
            \ decorator_from_middleware_with_args decr decr_version default
            \ defaultTestResult default_if_none default_key_func
            \ default_reference_role default_units defer deferrable_sql
            \ deferred_class_factory deferred_to_columns deferred_to_columns_cb
            \ deferred_to_data delItem delete delete_batch delete_cookie
            \ delete_file delete_first_token delete_many delete_model
            \ delete_object delete_selected delete_test_cookie delete_view
            \ deletion_field delfcn dependency_ordered deprecated_func
            \ description deserialize destroy_test_db dict dictConfig dictitem
            \ dictsort dictsortreversed dictvalue difference dimension dims
            \ direct_to_template directory_index disable disable_action
            \ disable_constraint_checking disable_transaction_methods disconnect
            \ discover disjoint dispatch display display_for_field distance
            \ distinct distinct_sql divisibleby django django_table_names
            \ doCleanups do_block do_block_translate do_cache do_extends
            \ do_filter do_for do_get_available_languages
            \ do_get_current_language do_get_current_language_bidi
            \ do_get_language_info do_get_language_info_list do_if do_ifequal
            \ do_include do_ntranslate do_pending_lookups do_query
            \ do_related_class do_timezone do_translate do_with doc_index doit
            \ done double_output download driver_count drop_foreignkey_sql
            \ drop_sequence_sql dst dummy dump dumps dup_select_related
            \ editable_fields ellipsoid email email_user emit
            \ emit_post_sync_signal empty empty_block_tag empty_iter
            \ empty_urlconf empty_variable enable enable_constraint_checking
            \ encode encode_basestring encode_file encode_multipart
            \ endChannelElement end_index end_object end_serialization
            \ end_subtree end_transaction_sql ensure_default_manager
            \ ensure_defaults ensure_echo_on enter_command
            \ enter_transaction_management entering env_func envelope equals
            \ equals_exact errmsg error error_h error_output errors escape
            \ escape_filter escape_quotes escapejs escapejs_filter etag eval
            \ evaluate evaluate_date_modifier_node evaluate_leaf evaluate_node
            \ ewkb ewkb_w ewkb_w3d ewkt exactly_two exclude execute
            \ execute_from_command_line execute_manager execute_sql executemany
            \ exhaust exists exit_command exiting expand_to_include
            \ expectedFailure expected_parameters expression ext_convert extend
            \ extend_nodelist extent extent3d extra extra_filters extract
            \ extract_views_from_urlpatterns fail fail_login failed_hash
            \ failfast fastcgi_help fd fdel feature_kwargs feed
            \ feed_extra_kwargs fetch_attr fetch_command
            \ fetch_returned_insert_id fetchall fetchmany fetchone fget fid
            \ field field_cast_sql field_count field_dict field_precisions
            \ field_types field_view field_widths fields fields_for_model
            \ file_complete file_move_safe file_path filepath_to_uri
            \ filesizeformat fill_related_selections filter filter_function
            \ finalize find findTestCases find_commands find_files find_filter
            \ find_in_app find_location find_management_module
            \ find_ordering_name find_template find_template_loader first
            \ first_field firstof fix fix_IE_for_attach fix_IE_for_vary
            \ fix_ampersands fix_ampersands_filter fix_location_header fk_field
            \ flag flag_comments flatatt flatpage flatten_fieldsets
            \ flatten_result floatformat floatstr flush foo for_model
            \ for_update_sql forbid_multi_line_headers force_escape
            \ force_managed force_no_ordering force_rhr force_unicode form_hmac
            \ form_invalid form_valid format format_callback format_exception
            \ format_failure format_number format_organisation_number
            \ format_output format_personal_id_number format_position
            \ format_subject formatted_coords formatted_geom formatted_poly
            \ formfield formfield_for_choice_field formfield_for_dbfield
            \ formfield_for_foreignkey formfield_for_manytomany formset_factory
            \ from_bbox from_current_timezone from_dict from_esri fromfile
            \ fromstr fset full_clean fulltext_search_sql gather_stats
            \ gdal_full_version gdal_release_date gdal_version gdal_version_info
            \ gen_bbox generate_filename generate_security_data
            \ generate_security_hash generic_inlineformset_factory
            \ generic_tag_compiler geo_apps geo_db_type geo_quote_name geodetic
            \ geodjango_suite geographic geohash geojson geom geom_col_name
            \ geom_count geom_index geom_name geom_output geom_type geom_typeid
            \ geomerrcheck geometries geometry geometry_columns geometry_field
            \ georss_coords geos geos_version geos_version_info get
            \ getDescription getInnerText getItem getOrdinate getTestCaseNames
            \ getX getY getZ get_absolute_url get_accessor_name get_action
            \ get_action_choices get_actions get_add_permission get_admin_log
            \ get_admin_url get_aggregation get_all_cleaned_data
            \ get_all_field_names get_all_objects_for_this_type
            \ get_all_permissions get_all_related_m2m_objects_with_model
            \ get_all_related_many_to_many_objects get_all_related_objects
            \ get_all_related_objects_with_model get_allow_empty
            \ get_allow_future get_ancestor_link get_app get_app_errors
            \ get_approve_url get_apps get_as_text get_attname
            \ get_attname_column get_auto_id get_available_name get_backends
            \ get_base_chain get_base_dir get_base_url get_block
            \ get_bound_method_weakref get_by_natural_key get_cache
            \ get_cache_key get_cache_name get_cached_row get_callable
            \ get_change_permission get_changelist get_changelist_form
            \ get_changelist_formset get_choices get_choices_default
            \ get_cleaned_data_for_step get_columns get_commands get_comment_app
            \ get_comment_app_name get_comment_count get_comment_create_data
            \ get_comment_form get_comment_list get_comment_model
            \ get_comment_object get_comment_permalink get_compiler
            \ get_connection get_content_object_url get_content_type get_context
            \ get_context_data get_context_object_name
            \ get_context_value_from_queryset get_cookie_signer
            \ get_cookie_storage get_coords get_count get_css_value get_current
            \ get_current_or_first_step get_current_site get_current_timezone
            \ get_current_timezone_name get_current_timezone_tag
            \ get_date_error_message get_date_field get_date_list
            \ get_dated_items get_dated_queryset get_day get_day_format
            \ get_db_prep_lookup get_db_prep_save get_db_prep_value
            \ get_declared_fields get_decoded get_default get_default_columns
            \ get_default_prefix get_default_timezone get_default_timezone_name
            \ get_default_username get_delete_permission get_delete_url
            \ get_deleted_objects get_deserializer get_digit get_directory_name
            \ get_dist_ops get_distance get_distinct get_doctest get_ds_file
            \ get_edited_object get_empty_query_set get_environ get_examples
            \ get_exception_reporter_filter get_existing_storage
            \ get_expire_at_browser_close get_expiry_age get_expiry_date
            \ get_extra_select_format get_feed get_field get_field_by_name
            \ get_field_select get_field_type get_fields get_fields_from_path
            \ get_fields_with_model get_fieldsets get_filename get_files
            \ get_filters get_finders get_flag_url get_flatchoices get_flatpages
            \ get_for_id get_for_model get_for_models get_form get_form_class
            \ get_form_error get_form_initial get_form_instance get_form_kwargs
            \ get_form_list get_form_prefix get_form_step_data
            \ get_form_step_files get_form_target get_format get_format_modules
            \ get_formats get_formset get_formsets get_fqdn get_from_clause
            \ get_full_name get_full_path get_geom_placeholder get_geometry_type
            \ get_geoms get_group_permissions get_grouping get_handler
            \ get_hasher get_host get_image_dimensions get_index_sql get_indexes
            \ get_initial get_initial_alias get_initkwargs get_inline_instances
            \ get_internal_type get_internal_wsgi_application get_key_columns
            \ get_key_func get_klass_info get_kwargs_str get_language
            \ get_language_bidi get_language_from_path get_language_from_request
            \ get_language_info get_layer get_level get_level_tags get_library
            \ get_limit_choices_to_from_path get_list_display
            \ get_list_display_links get_list_or_404 get_loaded_field_names
            \ get_loaded_field_names_cb get_login_required_url get_lon_lat
            \ get_m2m_with_model get_make_object_list get_many get_map_widget
            \ get_max_age get_media_prefix get_messages get_meta get_mod_func
            \ get_model get_model_and_form_class get_model_from_relation
            \ get_model_perms get_models get_month get_month_format
            \ get_named_cookie_wizard get_named_session_wizard get_names
            \ get_next_day get_next_month get_next_step get_nodes_by_type
            \ get_ns_resolver get_object get_object_for_this_type
            \ get_object_or_404 get_ogr_db_string get_or_create get_order_dir
            \ get_ordered_objects get_ordering get_ordering_field
            \ get_ordering_field_columns get_paginate_by get_paginator
            \ get_parent get_parent_list get_placeholder get_pointer_arr
            \ get_post_parameters get_postgis_types get_prefetch_query_set
            \ get_prefetcher get_prefix get_prep_lookup get_prep_value
            \ get_prepopulated_fields get_prev_step get_previous_day
            \ get_previous_month get_primary_key_column get_profile
            \ get_public_serializer_formats get_quantifier get_query_set
            \ get_query_string get_queryset get_random_string
            \ get_readable_field_data_type get_readonly_fields get_redirect_url
            \ get_related_field get_related_updates get_relations get_renderer
            \ get_request get_request_repr get_resolved_arguments get_resolver
            \ get_response get_results get_return_data_type get_runner
            \ get_safe_settings get_script_name get_script_prefix
            \ get_select_format get_select_option get_serializer
            \ get_serializer_formats get_server_version get_session_storage
            \ get_signed_cookie get_slug_field get_spheroid get_srid
            \ get_srid_info get_standard_processors get_static_prefix
            \ get_step_data get_step_files get_step_index get_step_url
            \ get_storage get_storage_class get_success_url get_svn_revision
            \ get_system_username get_table_description get_table_list
            \ get_tag_uri get_target_ctype_pk get_template
            \ get_template_exception_info get_template_from_string
            \ get_template_names get_template_sources get_templatetags_modules
            \ get_tests get_text_list get_token get_traceback_data
            \ get_traceback_frame_variables get_traceback_frames
            \ get_traceback_html get_traceback_text get_unique_error_message
            \ get_units get_urlconf get_urls get_user get_user_id
            \ get_valid_filename get_valid_name get_validation_digit
            \ get_validation_errors get_validator_unique_lookup_type get_version
            \ get_warnings_state get_week get_week_format get_width_height
            \ get_wsgi_application get_x get_xframe_options_value get_y get_year
            \ get_year_format get_z get_zoom getfcn getlist getquoted gettext
            \ gettext_noop getvalue gfk_key gml gqn grab grab_field_data handle
            \ handle_app handle_charref handle_data handle_default_options
            \ handle_endtag handle_entityref handle_extensions handle_field
            \ handle_file_complete handle_fk_field handle_inspection
            \ handle_label handle_m2m handle_m2m_field handle_noargs
            \ handle_raw_input handle_request handle_simple handle_startendtag
            \ handle_starttag handle_template handle_token
            \ handle_uncaught_exception handler has_add_permission
            \ has_auto_field has_bom has_change_permission has_changed has_cs
            \ has_css_class has_default has_delete_permission has_header has_key
            \ has_leading_dir has_module_perms has_next has_other_pages
            \ has_output has_perm has_permission has_perms has_previous
            \ has_results has_usable_password has_valid_birthday
            \ has_valid_checksum has_valid_location has_vary_header hashed_name
            \ hasz head help_text_for_field hex hexewkb hidden_fields
            \ history_view homepage_view http_date http_method_not_allowed
            \ humanize_tester i18n i18n_javascript i18n_patterns icons id
            \ id_for_label id_number_checksum identify_epsg ifchanged ifequal
            \ ifnotequal ignore import_epsg import_library import_module
            \ import_proj import_user_input import_wkt import_xml in_bulk
            \ in_moderation include include_is_allowed inclusion_tag incr
            \ incr_version indent index indexfcn infix info init_data
            \ init_name_map initial_form_count initial_security_hash
            \ inlineformset_factory inner inner_func inner_run insert
            \ insert_query insert_values installHandler installed_models
            \ instance_pre_init instances_with_model instrumented_test_render
            \ int_from_geom int_output int_to_base36 intcomma intersection
            \ intersects intword invalid_block_tag inverse_flattening
            \ ip_address_validators ipython iri_to_uri iriencode isTestMethod
            \ is_active is_addition is_ajax is_anonymous is_authenticated
            \ is_aware is_cached is_change is_checked is_deletion is_dirty
            \ is_hidden is_ignored is_iterable is_language_prefix_patterns_used
            \ is_library_missing is_managed is_multipart is_naive
            \ is_password_usable is_protected_type is_quoted_string
            \ is_quoted_unicode is_rendered is_secure is_url is_user is_valid
            \ is_valid_email is_valid_ipv6_address is_valid_path item_attributes
            \ item_description item_extra_kwargs item_geometry item_link
            \ item_pubdate item_title items items_for_result iter_format_modules
            \ iterator iterencode iteritems iterkeys iterlists itervalues
            \ javascript_catalog javascript_quote join js js_params json
            \ jython_reloader keys kml kmz label_for_field label_for_value
            \ label_from_instance label_tag language language_bidi language_name
            \ language_name_local last last_arg_byref last_executed_query
            \ last_insert_id last_modified lastmod lat_lon latest
            \ latest_post_date latlng_from_coords layer_count layer_name
            \ layer_option lazy learn_cache_key leave_transaction_management led
            \ length length_is lex limits_plus linear_name linear_units
            \ linebreak_iter linebreaks linebreaks_filter linebreaksbr linecol
            \ linenumbers link link_file list list_option listdir listener_login
            \ listener_logout lists lists_of_len literals live_server_url ljust
            \ ll load loadTestsFromModule loadTestsFromName loadTestsFromNames
            \ loadTestsFromTestCase load_all_installed_template_libraries
            \ load_app load_backend load_command_class load_data load_handler
            \ load_hashers load_map_js load_middleware load_spatialite_sql
            \ load_template load_template_source loaders loads local localize
            \ localize_input localize_tag localtime localtime_tag location lock
            \ log log_action log_addition log_change log_deletion log_message
            \ login login_required logout logout_then_login lon_lat
            \ lonlat_to_pixel lookup_allowed lookup_cast lookup_content_type
            \ lookup_field lookup_needs_distinct lookup_object lookups lorem
            \ lower luhn luhn_checksum_is_valid m2m_column_name m2m_convert
            \ m2m_db_table m2m_reverse_name m2m_reverse_target_field_name
            \ m2m_target_field_name mail_admins mail_managers main main_
            \ main_help_text main_view makeSuite make_atom make_aware
            \ make_contrib make_debug_cursor make_foreign_order_accessors
            \ make_key make_line make_list make_messages
            \ make_middleware_decorator make_msgid make_multi make_naive
            \ make_origin make_password make_random_password make_style
            \ make_token make_writeable managed map_options mapping
            \ mark_for_escaping mark_safe markdown mask_hash matches_patterns
            \ max_in_list_size max_name_length max_x max_y media media_property
            \ mem_size memoize merge merged message message_user messages
            \ method_decorator method_get_order method_set_order min_x min_y
            \ missing_docutils_page model_class model_databrowse model_detail
            \ model_fields model_format_dict model_index model_index_html
            \ model_installed model_ngettext model_page model_to_dict
            \ model_unpickle model_view modelform_factory modelformset_factory
            \ moderate modified_time module_has_submodule module_to_dict more
            \ multiple_chunks multiply_reduce my_function my_view name namespace
            \ namespace_dict natural_key naturalday naturaltime
            \ need_force_having negate nested never_cache new newItems new_date
            \ new_datetime new_file new_method_proxy next nextRange next_char
            \ next_page_number next_redirect next_space_index next_token
            \ ngettext no_backend no_limit_value no_mysql no_oracle no_postgis
            \ no_spatialite no_style nodelist non_field_errors non_form_errors
            \ none nop norm_child_text norm_whitespace normal_view normalize
            \ normalize_dictionary normalize_email normalize_fieldsets
            \ normalize_name normalize_newlines normalize_whitespace notice_h
            \ now npgettext nud null_javascript_catalog null_srid num_coords
            \ num_feat num_fields num_geom num_interior_rings num_items
            \ num_params num_points num_steps number_format object_by_pk
            \ object_detail object_list objects ogr ogrinfo ogrinspect ol_bounds
            \ ol_projection on_template_render onload only open options order_by
            \ order_modified_iter ordered ordering_field ordinal
            \ output_difference overlaps page page_not_found paginate_queryset
            \ pagination paginator_number paragraph paragraphs params parse
            \ parseArgs parse_accept_lang_header parse_backend_conf
            \ parse_backend_uri parse_bits parse_boundary_stream
            \ parse_color_setting parse_cookie parse_date parse_datetime
            \ parse_datetime_with_timezone_support parse_docstring parse_endtag
            \ parse_etags parse_file_upload parse_header parse_html
            \ parse_http_date parse_http_date_safe parse_params parse_rst
            \ parse_starttag parse_time partition partition_suite parts
            \ pass_test password_change password_change_done password_reset
            \ password_reset_complete password_reset_confirm password_reset_done
            \ patch_cache_control patch_isclass patch_response_headers
            \ patch_vary_headers patched_isclass path patterns pbkdf2
            \ perform_approve perform_delete perform_flag perimeter permalink
            \ permission_denied permission_required pgettext phone2numeric
            \ phone2numeric_filter ping_google pixel_to_lonlat pk
            \ pk_default_value pk_field pk_index pk_is_not_editable placeholder
            \ pluralize pnt_func point_count point_on_surface pop popfcn popitem
            \ populate_xheaders post post_comment post_post post_process
            \ post_save_moderation postgis_full_version postgis_geos_version
            \ postgis_lib_version postgis_proj_version postgis_version
            \ postgis_version_tuple pprint pre_save pre_save_moderation
            \ pre_sql_setup precision precision_wkt prefetch_one_level
            \ prefetch_related prefetch_related_objects prefix prefix_for_step
            \ prep_for_iexact_query prep_for_like_query prepare
            \ prepare_database_save prepare_js_for_gettext prepare_leaf
            \ prepare_lookup_value prepare_node prepare_value prepared
            \ prepared_predicate prepend_token prepopulated_fields_js
            \ pretty_name pretty_wkt prev preview_get preview_post
            \ previous_page_number printErrorList printErrors print_help
            \ print_lax_help process process_clob process_exception process_file
            \ process_kwarg process_messages process_preview process_request
            \ process_response process_step process_step_files process_view
            \ product proj proj4 proj4_version proj_version_tuple projected
            \ promote_alias promote_alias_chain promote_unused_aliases ptr_byref
            \ push put py_encode_basestring_ascii py_make_scanner py_scanstring
            \ python_reloader queryset quote quote_etag quote_name
            \ quote_name_unless_alias random random_function_sql raw raw_decode
            \ raw_post_data read reader reader_enters reader_leaves readline
            \ readlines recapitalize receive_data_chunk receiver recipients
            \ record_output redirect redirect_to redirect_to_login ref_alias
            \ regex regex_lookup regex_lookup_10 regex_lookup_9 register
            \ registerResult register_models register_optionflag
            \ register_serializer regroup relabel_aliases relate relate_pattern
            \ related_manager_cls related_objects related_query_name reload
            \ reloader_thread remote_user_auth_view remove removeHandler
            \ removeResult remove_comments remove_inherited_models
            \ remove_trailing_data_field removefcn removetags render
            \ render_change_form render_comment_form render_comment_list
            \ render_css render_done render_flatpage render_hash_failure
            \ render_js render_next_step render_node render_option
            \ render_options render_revalidation_failure render_template
            \ render_to_kml render_to_kmz render_to_response render_to_string
            \ render_to_text render_token_list rendered_content reorder_suite
            \ replace replace_p_tags report_failure report_start report_success
            \ report_unexpected_exception represent_decimal request
            \ require_http_methods reset reset_format_cache reset_queries
            \ reset_refcounts resolve resolve403 resolve404 resolve500
            \ resolve_aggregate resolve_columns resolve_context
            \ resolve_expression resolve_related_class resolve_template
            \ resolve_through_model resolve_variable response_action
            \ response_add response_change restart_with_reloader
            \ restore_template_loaders restore_transaction_methods
            \ restore_warnings_state restructuredtext result_headers
            \ result_hidden_fields result_list results results_iter
            \ return_insert_id rev_typecast_decimal reverse reverse_dict
            \ reverse_field_path reverse_geom rfc2822_date rfc3339_date ring
            \ rjust rmtree_errorhandler rollback rollback_unless_managed root
            \ root_attributes rss_attributes rstrip_last_element run runTest
            \ runTests run__test__ run_docstring_examples run_from_argv
            \ run_shell run_suite run_tests run_validators rundict rundoc
            \ runfastcgi runshell runstring safe safeRef safe_join safe_repr
            \ safe_str safe_summary safeseq salt salted_hmac same_origin
            \ sample_objects sample_request sanitize_address sanitize_separators
            \ save save_base save_existing save_existing_objects save_form
            \ save_form_data save_formset save_instance save_m2m save_model
            \ save_new save_new_objects save_related save_warnings_state
            \ savepoint savepoint_commit savepoint_commit_sql
            \ savepoint_create_sql savepoint_rollback savepoint_rollback_sql
            \ scale script_from_examples scripts search_form security_errors
            \ security_hash select_for_update select_related
            \ select_related_descend select_template semi_major semi_minor send
            \ send_mail send_mass_mail send_messages send_robust
            \ sensitive_post_parameters sensitive_post_parameters_wrapper
            \ sensitive_variables sensitive_variables_wrapper sentence
            \ sequence_list sequence_reset_sql serializable_value serialize
            \ serve serve_forever server_bind server_error set setItem
            \ setOrdinate setUp setUpClass setX setY setZ set_aggregate_mask
            \ set_attributes_from_name set_attributes_from_rel set_autocommit
            \ set_cdata_mode set_clean set_continue set_cookie set_cookie_data
            \ set_coords set_dirty set_expiry set_extra_mask set_group_by
            \ set_language set_level set_limits set_managed set_many
            \ set_on_delete set_options set_password set_script_prefix
            \ set_session_data set_session_key set_signed_cookie set_srid
            \ set_start set_step_data set_step_files set_test_cookie
            \ set_time_zone_sql set_trace set_unittest_reportflags
            \ set_unusable_password set_urlconf set_x set_y set_z setdefault
            \ setfcn setlist setlistdefault setter settings setup_databases
            \ setup_environ setup_inherited_models setup_join_cache setup_joins
            \ setup_pk setup_proxy setup_test_environment
            \ setup_test_template_loader shell shortDescription shortcut show
            \ show_template_response shutdown sign signal_receiver signature
            \ simple simple_class_factory simple_tag simplify simplify_regex
            \ sitemap size skip skipIf skipIfDBFeature skipTest skipUnless
            \ skipUnlessAuthIsInstalled skipUnlessDBFeature skip_past
            \ skip_wrapper slice_filter slugify smart_split smart_str
            \ smart_unicode smart_urlquote snap_to_grid some_view sort
            \ sort_dependencies sorted_list_difference source_error spaceless
            \ spatial_aggregate_sql spatial_lookup_sql spatial_ref_sys
            \ spatialite_init_file spatialite_version spatialite_version_tuple
            \ spheroid split_contents split_exclude split_leading_dir split_url
            \ splitext sql_all sql_create sql_create_model sql_custom sql_delete
            \ sql_destroy_model sql_flush sql_for_columns
            \ sql_for_inline_foreign_key_references
            \ sql_for_inline_many_to_many_references sql_for_pending_references
            \ sql_indexes sql_indexes_for_field sql_indexes_for_model
            \ sql_remove_table_constraints sql_reset sql_table_creation_suffix
            \ sql_with_params square srid srs srs_double srs_output ssi
            \ ssn_check_digit staff_member_required startTest startTestRun
            \ start_index start_object start_serialization start_subtree
            \ start_transaction_sql static staticfiles_urlpatterns std_call
            \ step0 step1 step_range stop stopTest stopTestRun store_exc_info
            \ store_rendered_templates stored_cookie_messages_count
            \ stored_length stored_messages_count stored_session_messages_count
            \ str_to_unicode strclass strconvert strftime string_from_geom
            \ string_output stringfilter stringformat strip_entities
            \ strip_spaces_between_tags strip_tags striptags strptime style
            \ subclass_exception submit_row subwidgets success suite
            \ suite_result summarize super supports_color svg sym_difference
            \ table_alias table_name_col table_name_converter table_names
            \ tablespace_sql tag tag_function tearDown tearDownClass
            \ teardown_databases teardown_test_environment
            \ technical_404_response technical_500_response tell template_detail
            \ template_filter_index template_name template_tag_index templatetag
            \ templatize temporary_file_path test test00_GEOSIndexException
            \ test00_base test00_init test00a_geomtype test00b_geomtype_25d
            \ test01_3d test01_PointMutations test01_ensure_geographic_media
            \ test01_fixture_load test01_fixtures test01_getslice test01_init
            \ test01_retrieve test01_srid test01_update test01_valid_driver
            \ test01_valid_shp test01_wkt test01_wktreader
            \ test01a_3d_layermapping test01a_ewkt test01a_wkt test01b_gml
            \ test01b_hex test01b_hexewkb test01c_hex test01c_kml test01d_errors
            \ test01d_wkb test01e_json test01e_wkb test01f_create_hex
            \ test01g_create_wkb test01h_ewkt test01i_json test01k_eq
            \ test01k_fromfile test02_PointExceptions test02_bad_query
            \ test02_bad_wkt test02_distance_lookup test02_dwithin
            \ test02_invalid_driver test02_invalid_shp test02_kmz test02_null
            \ test02_osr test02_points test02_properties test02_proxy
            \ test02_select_related test02_setslice test02_simple_layermap
            \ test02_wktwriter test02a_kml test02a_points test02b_geojson
            \ test02b_multipoints test03_PointApi test03_aliases test03_country
            \ test03_delslice test03_distance_method test03_ellipsoid
            \ test03_equivalence test03_extent test03_geom_type test03_get_wkt
            \ test03_layermap_strict test03_multipoints test03_transform_related
            \ test03_wkbreader test03a_distance_method test03a_kml
            \ test03a_layers test03a_linestring test03a_union
            \ test03b_distance_method test03b_extent test03b_gml
            \ test03b_layer_slice test03b_multilinestring
            \ test03c_distance_method test03c_geojson test03c_layer_references
            \ test03d_svg test04_LineStringMutations test04_city
            \ test04_distance_lookups test04_expand_to_include_pt_2_params
            \ test04_features test04_get_set_del_single
            \ test04_invalid_operators_functions
            \ test04_layermap_unique_multigeometry_fk test04_linearring
            \ test04_linestring test04_perimeter test04_proj test04_transform
            \ test04_unicode_date test04_wkbwriter
            \ test04a_related_extent_aggregate test04b_related_union_aggregate
            \ test05_Polygon test05_empty_count test05_epsg
            \ test05_expand_to_include_pt_2_tuple test05_extent
            \ test05_geodetic_distance_lookups test05_geography_layermapping
            \ test05_geometries test05_length test05_multilinestring
            \ test05_out_of_range_exceptions
            \ test05_select_related_fk_to_subclass test05_test_fid_range_step
            \ test05_unicode_response test05a_polygons test05b_multipolygons
            \ test06_Collection test06_area test06_defer_or_only_with_annotate
            \ test06_expand_to_include_extent_4_params
            \ test06_expand_to_include_extent_4_tuple test06_f_expressions
            \ test06_geography_area test06_linearring test06_list_methods
            \ test06_make_line test06_model_inheritance test06_scale
            \ test06_spatial_filter test06_unicode_query test06a_memory_hijinks
            \ test07_allowed_types test07_boolean_conversion
            \ test07_boolean_props test07_expand_to_include_envelope
            \ test07_integer_overflow test07_invalid_layer test07_length
            \ test07_translate test07_values test07a_polygons
            \ test07b_closepolygons test08_angular_linear test08_coord_seq
            \ test08_defer_only test08_expand_to_include_point test08_min_length
            \ test08_multipolygons test08_perimeter test09_authority
            \ test09_disjoint test09_iterable_check
            \ test09_measurement_null_fields test09_pk_relations
            \ test09_relate_pattern test09a_srs test09b_srs_transform
            \ test09c_transform_dim test10_attributes test10_checkindex
            \ test10_combine test10_contains_contained test10_difference
            \ test10_intersection test11_geoquery_pickle test11_intersection
            \ test11_lookup_insert_transform test11_union test11_wellknown
            \ test12_coordtransform test12_difference test12_null_geometries
            \ test12_symdifference test12a_count test12b_count test13_attr_value
            \ test13_left_right test13_select_related_null_fk
            \ test13_symdifference test13_union test13c_count test14_add
            \ test14_buffer test14_collect test14_equals test15_extent
            \ test15_invalid_select_related test15_relate test15_srid test16_25D
            \ test16_annotated_date_queryset test16_createnull
            \ test16_mutable_geometries test17_pickle test17_threed
            \ test17_unionagg test18_distance test18_geometryfield
            \ test18_ogrgeometry_transform_workaround test19_centroid
            \ test19_equivalence_regression test19_length test20_pointonsurface
            \ test20a_emptyCollections test20b_collections_of_collections
            \ test21_scale test21_test_gdal test22_copy test22_translate
            \ test23_numgeom test23_transform test23_transform_nogdal
            \ test23_transform_noop test23_transform_nosrid test24_extent
            \ test24_numpoints test25_geoset test25_pickle
            \ test26_inherited_geofields test26_line_merge test26_prepared
            \ test27_snap_to_grid test27_valid_reason test28_geos_version
            \ test28_reverse test29_force_rhr test30_geohash testAccess
            \ testAccessInvaliA testAccessInvalid testAddition testCallable
            \ testComparisons testFailure testInit testInitInvaliA
            \ testInitInvalid testLoginRequired testLoginRequiredNextUrl
            \ testMultiplication testUnitAttName testUnitConversions
            \ testUnitsStr testView test_10265 test_11726 test_11_sorting
            \ test_12_arithmetic test_14377 test_14498 test_14576 test_15075
            \ test_9473 test_add test_add_lazy_translation test_add_update
            \ test_anonymous_user test_apnumber test_bad_algorithm test_bad_hash
            \ test_basic_addition test_bcrypt test_bool_submit
            \ test_both_passwords test_bug_14242 test_bug_17944_empty_password
            \ test_bug_17944_unknown_password_algorithm
            \ test_bug_17944_unmanageable_password test_bug_5605
            \ test_builtin_fields test_cached_sitemap_index test_capability
            \ test_cleaned_data test_clear test_configuration_check
            \ test_confirm_complete test_confirm_different_passwords
            \ test_confirm_invalid test_confirm_invalid_post
            \ test_confirm_invalid_user test_confirm_overflow_user
            \ test_confirm_valid test_cookie_worked test_create_user
            \ test_create_user_email_domain_normalize
            \ test_create_user_email_domain_normalize_rfc3696
            \ test_create_user_email_domain_normalize_with_whitespace
            \ test_createsuperuser_management_command test_crypt
            \ test_current_site_in_context_after_login test_current_step
            \ test_custom_email_subject test_custom_expiry_datetime
            \ test_custom_expiry_reset test_custom_expiry_seconds
            \ test_custom_expiry_timedelta test_custom_fields test_custom_perms
            \ test_custom_tags test_cycle test_databrowse_register_unregister
            \ test_date_field test_date_length test_db_signature test_decode
            \ test_default_expiry test_default_level test_delete test_docutils
            \ test_domain test_done test_email_found
            \ test_email_found_custom_from test_email_not_found
            \ test_empty_permitted test_empty_username test_existing
            \ test_existing_add test_existing_add_read_update test_existing_read
            \ test_existing_read_add_update test_exists_searches_cache_first
            \ test_extra_context test_fallback_authenticated_flatpage
            \ test_fallback_flatpage test_fallback_flatpage_special_chars
            \ test_fallback_non_existent_flatpage test_field_name
            \ test_field_order test_first_step test_flatpage_admin_form_edit
            \ test_flatpage_admin_form_url_uniqueness_validation
            \ test_flatpage_admin_form_url_validation
            \ test_flatpage_doesnt_requires_trailing_slash_without_append_slash
            \ test_flatpage_requires_leading_slash
            \ test_flatpage_requires_trailing_slash_with_append_slash
            \ test_flatpage_sitemap test_flush test_flush_used_backends
            \ test_form_condition test_form_finish test_form_get test_form_init
            \ test_form_initial test_form_instance test_form_jump
            \ test_form_kwargs test_form_post_error test_form_post_success
            \ test_form_prefix test_form_preview test_form_refresh
            \ test_form_reset test_form_stepback test_form_submit
            \ test_form_submit_bad_hash test_form_submit_good_hash
            \ test_formset_instance test_full_request_response_cycle
            \ test_generic_sitemap test_geofeed_atom test_geofeed_rss
            \ test_geofeed_w3c test_geositemap_georss test_geositemap_index
            \ test_geositemap_kml test_get test_get_all_permissions
            \ test_get_all_superuser_permissions test_get_bad_cookie
            \ test_get_context_data_inheritance test_get_context_data_with_mixin
            \ test_get_current_site test_get_empty
            \ test_get_expire_at_browser_close test_get_fallback
            \ test_get_fallback_only test_get_flatpages_tag
            \ test_get_flatpages_tag_for_anon_user
            \ test_get_flatpages_tag_for_user test_get_flatpages_with_prefix
            \ test_get_flatpages_with_prefix_for_anon_user
            \ test_get_flatpages_with_prefix_for_user
            \ test_get_flatpages_with_variable_prefix
            \ test_get_for_models_empty_cache test_get_for_models_full_cache
            \ test_get_for_models_partial_cache test_get_group_permissions
            \ test_good_hash test_group_natural_key test_has_key
            \ test_has_module_perms test_has_no_object_perm test_has_perm
            \ test_has_perms test_high_level test_httponly_session_cookie
            \ test_https_login_url test_i18n test_i18n_intcomma
            \ test_i18n_intword test_inactive_user test_inactive_user_i18n
            \ test_incorrect_password test_init test_initial_call
            \ test_initial_call_with_params test_instance_is_maintained
            \ test_intcomma test_intcomma_without_number_grouping test_intword
            \ test_invalid_data test_invalid_email test_invalid_key
            \ test_invalid_key_backslash test_invalid_key_forwardslash
            \ test_invalid_username test_iteritems test_iterkeys test_itervalues
            \ test_json_encoder_decoder test_known_user test_l10n_intcomma
            \ test_last_login test_load_overlong_key test_load_storage
            \ test_localized_priority test_login test_login_url_with_querystring
            \ test_logout test_logout_anonymous test_logout_default
            \ test_logout_with_custom_redirect_argument
            \ test_logout_with_next_page_specified
            \ test_logout_with_overridden_redirect_url
            \ test_logout_with_redirect_argument test_lookup_cache
            \ test_lorem_tag test_low_level test_low_level_pbkdf2_sha1
            \ test_low_level_pkbdf2 test_make_token test_manipulated_cookie
            \ test_manipulated_data test_markdown
            \ test_markdown_attribute_disable test_markdown_attribute_enable
            \ test_max_cookie_length test_md5 test_message_attrs
            \ test_middleware_disabled test_middleware_disabled_fail_silently
            \ test_missing_class test_missing_model test_missing_module
            \ test_multiple_posts test_named_urls test_naturalday
            \ test_naturalday_tz test_naturaltime test_new_session
            \ test_no_docutils test_no_fallback test_no_httponly_session_cookie
            \ test_no_markdown test_no_remote_user test_no_textile
            \ test_no_update test_no_upgrade test_no_upgrade_on_incorrect_pass
            \ test_nonexistant_email test_ordinal test_paragraphs
            \ test_parsing_errors test_password_change_done_fails
            \ test_password_change_done_succeeds
            \ test_password_change_fails_with_invalid_old_password
            \ test_password_change_fails_with_mismatched_passwords
            \ test_password_change_succeeds test_password_verification
            \ test_perms_attrs test_persistence test_pkbdf2 test_poly test_pop
            \ test_pop_default test_post_fallback_flatpage
            \ test_post_unknown_page test_post_view_flatpage
            \ test_queryset_is_maintained test_raises_exception
            \ test_redirect_fallback_flatpage
            \ test_redirect_fallback_flatpage_root
            \ test_redirect_fallback_flatpage_special_chars
            \ test_redirect_fallback_non_existent_flatpage
            \ test_redirect_view_flatpage
            \ test_redirect_view_flatpage_special_chars
            \ test_redirect_view_non_existent_flatpage test_remote_login_url
            \ test_remote_login_url_with_next_querystring
            \ test_requestsite_sitemap test_reset_cookie
            \ test_response_without_messages test_revalidation test_save
            \ test_save_another test_secure_session_cookie
            \ test_secure_sitemap_index test_secure_sitemap_section
            \ test_security_check test_session_fallback
            \ test_session_fallback_only test_session_get_decoded
            \ test_session_is_accessed test_session_key_is_read_only
            \ test_session_not_accessed test_sessionmanager_save test_setdefault
            \ test_settings_level test_sha1 test_shortcut_view
            \ test_shortcut_view_with_broken_get_absolute_url
            \ test_shortcut_view_without_get_absolute_url test_simple
            \ test_simple_custom_sitemap test_simple_sitemap
            \ test_simple_sitemap_custom_index test_simple_sitemap_index
            \ test_simple_sitemap_section test_site_cache test_site_manager
            \ test_site_profile_not_available test_sitemap_get_urls_no_site_1
            \ test_sitemap_get_urls_no_site_2
            \ test_sitemap_index_with_https_request test_sitemap_item
            \ test_sitemap_section_with_https_request test_standard_login_url
            \ test_step_data test_step_increments test_step_starts_at_zero
            \ test_store test_success test_superuser test_tags test_template
            \ test_template_context test_template_loader test_textfield_hash
            \ test_textile
            \ test_that_changepassword_command_changes_joes_password
            \ test_that_max_tries_exits_1 test_time_field test_timeout
            \ test_unknown_user test_unsalted_md5 test_unusable
            \ test_unusable_password test_unused_name test_update test_upgrade
            \ test_user test_user_already_exists test_user_attrs
            \ test_user_is_created_and_added_to_group test_user_natural_key
            \ test_user_no_email test_username_validity test_values
            \ test_view_authenticated_flatpage test_view_flatpage
            \ test_view_flatpage_special_chars test_view_non_existent_flatpage
            \ test_with_template_response test_words testfile testmod testsource
            \ textile through tile time time_format timesince timesince_filter
            \ timestamp timeuntil timeuntil_filter timezone_tag title
            \ to_current_timezone to_esri to_language to_list to_locale
            \ to_python to_unicode token_kwargs tokenize top topology
            \ topology_func total_form_count touches trace_dispatch transform
            \ transform_to transform_value translate translate_token translation
            \ trim_docstring trim_joins truncate truncate_html_words
            \ truncate_name truncate_words truncatechars truncatewords
            \ truncatewords_html tuple tuplize two_to_three type type_name
            \ typecast_date typecast_decimal typecast_time typecast_timestamp tz
            \ tzname ugettext ugettext_lazy unary_predicate unclosed_block_tag
            \ unescape_entities unescape_string_literal unget ungettext union
            \ unionagg unique unique_error_message unique_kwargs unique_messages
            \ unit_attname units units_func units_name unlocalize unlock
            \ unorderable_list_difference unordered_list unquote unref_alias
            \ unregister unregister_serializer unsign unused_name update
            \ update_all_contenttypes update_batch update_connections_time_zone
            \ update_contenttypes update_dimension_fields update_dupe_avoidance
            \ update_error_dict update_last_login update_object update_response
            \ upload_complete upper ur url url_converter url_for_result
            \ url_parameters url_params_from_lookup_dict url_patterns
            \ urlconf_module urlencode urlize urlizetrunc urlquote urlquote_plus
            \ urls urlunquote urlunquote_plus usage usageExit
            \ user_change_password user_passes_test userpage using utc
            \ utc_tzinfo_factory utcoffset valid valid_ident valid_nik_date
            \ valid_organisation valid_reason valid_value validate validate_base
            \ validate_field validate_fields_spec validate_id_birthday
            \ validate_inline validate_integer validate_ipv46_address
            \ validate_ipv6_address validate_key validate_number
            \ validate_thread_sharing validate_unique value value_encode
            \ value_for_index value_from_datadict value_from_object
            \ value_to_db_date value_to_db_datetime value_to_db_decimal
            \ value_to_db_time value_to_string values values_list var
            \ vary_on_cookie vary_on_headers vat_number_check_digit
            \ verbose_name_raw verify verify_fk verify_geom verify_ogr_field
            \ view view_detail view_index view_name visible_fields void_output
            \ voidptr_output wait wait_loaded_tag wait_until walk walk_to_end
            \ warn warning wasSuccessful was_modified_since widget_attrs width
            \ widthratio within wkb wkb_r wkb_read_func wkb_size wkb_w
            \ wkb_write_func wkb_writer_get wkb_writer_set wkt wkt_col wkt_r
            \ wkt_w wordcount words wordwrap wrap wrapped_view wrapper wraps
            \ write writeString write_hex write_items write_po_file
            \ write_pot_file writeln writer writer_enters writer_leaves
            \ xframe_options_deny xframe_options_exempt
            \ xframe_options_sameorigin xhtml xml xreadlines year_lookup_bounds
            \ use_for_related_field _
" }}}

syn keyword djangoMainModules bin conf contrib core db dispatch forms http
            \ middleware shortcuts template templatetags
            \ test utils views models

" 'db' is not always a module it can be a queryset option too.
syn match djangoModulesFixing "\s\+django\(\.\S\+\)\+"

syn keyword djangoContribModules admin admindocs auth comments contenttypes
            \ databrowse flatpages formtools gis humanize
            \ localflavor markup messages redirects sessions
            \ sitemaps sites staticfiles syndication webdesig

syn keyword djangoCoreModules cache context_processors exceptions files handlers
            \ mail management paginator serializers servers
            \ signals signing urlresolvers validators wsgi xheaders

syn keyword djangoTestModules client _doctest html signals simple testcase utils

" djangoUtilsModules {{{
syn keyword djangoUtilsModules archive autoreload baseconv cache checksums
            \ copycompat crypto daemonize datastructure dateformat dateparse
            \ dates datetime_safe decorators dictconfig encoding feedgenerator
            \ formats functinal hashcompat html_parser html http importlib ipv6
            \ itercompat jslex log module_loading numberformat _os regex_helper
            \ safestring simplejson synch termcolors text timesince timezone
            \ translation tree tzinfo unittest version xmlutil
" }}}

syn keyword djangoViewsModules csrf debug decorators defaults generic i18n
            \ static very edit create_update date_based dates
            \ detail list_detail list simpl

syn keyword djangoFieldOptions null blank choices db_column db_index
            \ db_tablespace default editable error_messages help_text
            \ primary_key unique unique_for_date unique_for_month
            \ unique_for_year verbose_name validators max_length
            \ auto_now auto_now_add max_digits decimal_places upload_to mode
            \ open close save path match recursive height_field width_field
            \ protocol unpack_ipv4 verify_exists limit_choices_to related_name
            \ to_field on_delete symmetrical through db_table parent_link

syn keyword djangoMetaOptions abstract app_label db_table db_tablespace
            \ get_latest_by managed order_with_respect_to ordering
            \ permissions proxy unique_together verbose_name verbose_name_plural

syn match djangoFieldLookup ".+__exact\|.+__iexact\|.+__contains\|.+__icontains\|.+__in\|.+__gt\|.+__gte\|.+__lt\|.+__lte\|.+__startswith\|.+__istartswith\|.+__endswith\|.+__iendswith\|.+__range\|.+__year\|.+__month\|.+__day\|.+__week_day\|.+__isnull\|.+__search\|.+__reqex\|.+__iregex"

syn match djangoCustomFunctions
            \ "\(get_\S\+_display\)\|\(get_next_by_\S\+\)\|\(get_previous_by_\S\+\)"

" djangoAdmin {{{
syn keyword djangoAdmin actions actions_on_top actions_on_bottom
            \ actions_selection_counter date_hierarchy exclude fields fieldsets
            \ classes description filter_horizontal filter_vertical form
            \ formfields_overrides inlines list_display list_display_links
            \ list_editable list_filter list_max_show_all list_per_page
            \ list_select_related ordering paginator prepopulated_fields
            \ radio_fields raw_id_fields readonly_fields save_as save_on_top
            \ search_fields add_form_template change_from_template
            \ change_list_template delete_confimation_template
            \ delete_selected_confirmation_template object_history_template
            \ LogEntryManager LogEntry is_addition is_change is_deletion
            \ get_edited_object get_admin_url FilterSelectMultiple
            \ media render AdminDateWidget AdminTimeWidget AdminSplitDateTime
            \ AdminRadioFieldRenderer AdminFileWidget
            \ url_params_from_lookup_dict ForeignKeyRawIdWidget
            \ base_url_parameters url_parameters
"}}}

" djangoAdminMethods {{{
syn keyword djangoAdminMethods save_model delete_model save_formset
            \ get_ordering save_related get_readonly_fields
            \ get_prepolulated_fields get_list_display get_list_display_links
            \ get_urls get_form get_formsets formfield_for_foreignkey
            \ formfield_or_manytomany formfield_for_choice_field
            \ get_changelist has_add_permission has_change_permission
            \ has_delete_permission queryset message_user get_paginator
            \ add_view change_view changelist_view delete_view history_view
"}}}

" djangoModuleClass {{{
syn keyword djangoModelClass ModelBase ModelState Model Empty
            \ simple_class_factory model_upickle subclass_exception Aggregate
            \ ProtectedError CASCADE PROTECT SET SET_DEFAULT DO_NOTHING
            \ force_managed Collector ExpressinNode F DateModifierNode AppCache
            \ ensure_default_manager Manager contribute_to_class
            \ _set_creation_counter _copy_to_model db_manager
            \ get_empty_query_set ManagerDescriptior Options add_field
            \ add_virtual_field setup_ok setup_proxy verbose_name_raw _fields
            \ get_fields_with_model _fill_fields_cache _many_to_many
            \ get_m2m_with_model get_field get_field_by_name
            \ get_all_field_names init_name_map get_add_permission
            \ get_change_permission get_delele_permission
            \ get_all_related_objects get_all_related_objecs_with_model
            \ _fill_related_objects_cache get_all_related_many_to_many_objects
            \ get_all_related_m2m_with_model get_base_chain get_parent_list
            \ get_ancestor_link get_ordered_objects pk_index
            \ CHUNK_SIZE ITER_CHUNK_SIZE REPR_OUTPUT_SIZE
            \ BoundRelatedObject RelatedObject get_choices get_db_prep_lookup
            \ editable_fields bind get_accessor_name get_cache_name
            \ class_prepared pre_init post_init pre_save post_save pre_delete
            \ post_delete post_syncdb m2m_changed FileDescriptor
            \ get_internal_type get_prep_lookup get_prep_value pre_save
            \ contribute_to_class get_directory_name get_filename
            \ generate_filename save_from_data formfiled ImageFileDescriptor
            \ update_dimension_fileds OrderWrt RECURSIVE_RELATIONSHIP_CONSTANT
            \ pending_loops add_lazy_relation db_pending_lookups RelatedField
            \ contribute_to_class set_attributes_from_rel db_related_class
            \ get_prop_class get_db_prep_lookup _pk_trace related_query_name
            \ SingleRelatedObjectDescriptor is_cached get_query_set
            \ get_prefetch_query_set ReverseSingleRelatedObjectDescriptor
            \ ForeignRelatedObjectsDescriptor related_manager
            \ create_many_related_manager _add_itmes _remove_items
            \ _clear_items ManyRelatedObjectsDescriptior
            \ related_manager_cls ReverseManyRelatedObjectsDescriptor
            \ through ManyToOneRel is_hidden OneToOneRel ManyToManyRel
            \ get_attname get_validator_unique_lookup_type get_default
            \ get_db_prep_save value_to_string contribute_to_related_class
            \ db_type create_many_to_many_intemediary_model
            \ SubfiledBase Creator make_contrib
" }}}

" djangoComment {{{
syn keyword djangoComment content_type
            \ object_pk content_object site get_content_object_url user
            \ user_name user_email user_url comment submit_date ip_address
            \ is_public CommentManager CommentFlag AlreadyModerated
            \ NotModerated CommentModerator Moderator CommentPostBadRequest
            \ post_comment flag approve perform_flag perform_delete
            \ perform_approve next_redirect confirmation_view
" }}}

if version >= 508
  if version <= 508
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

"  HiLink djangoDjango              djSub
  HiLink djangoMainModules         djClass
  HiLink djangoContribModules      djSub
  HiLink djangoCoreModules         djSub
"  HiLink djangoDbModules           djSub
"  HiLink djangoDispatchModules     djSub
"  HiLink djangoFormsModules        djSub
"  HiLink djangoHttpModules         djSub
"  HiLink djangoMiddlewareModules   djSub
"  HiLink djangoTemplateModules     djSub
"  HiLink djangoTemplatetagsModules djSub
  HiLink djangoTestModules         djSub
  HiLink djangoUtilsModules        djSub
  HiLink djangoViewsModules        djSub
"
"  HiLink djangoShortcutsModules    djFunct
"  HiLink djangoFieldTypes          djFunct
  HiLink djangoMetaOptions         djFunct
"  HiLink djangoQuerySet            djFunct
  HiLink djangoFieldLookup         djFunct
"  HiLink djangoAggregationFunctins djFunct
"  HiLink djangoInstanceMethods     djFunct
"  HiLink djangoManagers            djFunct
  HiLink djangoFieldOptions        djFunct
"  HiLink djangoTransactions        djFunct
  HiLink djangoAdmin               djFunct
  HiLink djangoAdminMethods        djFunct
  HiLink djangoModelClass          djFunct
  HiLink djangoCustomFunctions     djFunct
"  HiLink djangoTemplateBase        djFunct
  HiLink djangoTemplateContext     djFunct
  HiLink djangoTemplateDebug       djFunct
"  HiLink djangoTemplateDefaultFilters djFunct
"  HiLink djangoTemplateLoader      djFunct
"  HiLink djangoTemplateResponse    djFunct
"  HiLink djangoTemplateSmatif      djFunct
"  HiLink djangoHttp                djFunct
"  HiLink djangoConstants           Constant
  HiLink djangoComment             djFunct
"
  HiLink djangoModulesFixing       djSub
  HiLink djangoClass               djClass
  HiLink djangoConstant            Constant
  HiLink djangoFunction            djFunct
  delcommand HiLink
endif

let b:current_syntax = "django_syntax"

" vim: set expandtab tabstop=4 shiftwidth=4 smarttab softtabstop=4 tw=80 colorcolumn=+1:
